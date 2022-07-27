package cotroller;

import DAO.*;
import model.Product;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.*;
import java.util.function.BiConsumer;
import java.util.regex.Pattern;


@WebServlet(urlPatterns = "/product")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class ProductServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private ProductDAO productDAO;
    private String errors = "";

    public void init() throws ServletException {
        productDAO = new ProductDAO();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = "";
        if (req.getParameter("action") != null) {
            action = req.getParameter("action");
        }
        try {
            switch (action) {
                case "create":
                    showCreateProduct(req, resp);
                    break;
                case "delete":
                    deleteProduct(req, resp);
                    break;
                case "edit":
                    editFormProduct(req, resp);
                    break;
                default:
                    showProduct(req, resp);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    private void searchFormProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String s = "";
        int price = 0;
        if (req.getParameter("s") != null) {
            s = req.getParameter("s");
        } else if (Integer.parseInt(req.getParameter("s")) != 0) {
            price = Integer.parseInt(req.getParameter("s"));
        }
        List<Product> listProduct = productDAO.findProductNameAndPrice(s, price);
        System.out.println("listProduct:" + listProduct);
        req.setAttribute("listProduct" , listProduct);
        req.setAttribute("s" , s);
        req.setAttribute("price" , price);
        req.setAttribute("successful", "return  $.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Success', text: 'you have edit added!', class_name: 'color success' }), !1; ");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/product/product.jsp");
        requestDispatcher.forward(req,resp);
    }

    private void editFormProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product Product = productDAO.selectProduct(id);
        req.setAttribute("product", Product);
        req.setAttribute("edit", "edit");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showCreateProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        List<Product> listProduct = productDAO.selectAllProduct();
        req.setAttribute("listProduct", listProduct);
//        Locale lc = new Locale("ENGLISH","US");
//        NumberFormat nf = NumberFormat.getCurrencyInstance(lc);
//        String formatMoney =  nf.format(listProduct);
//        searchFormProduct(req,resp);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/product/product.jsp");
        requestDispatcher.forward(req, resp);
    }
    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        productDAO.deleteProduct(id);
        List<Product> listProduct = productDAO.selectAllProduct();
        req.setAttribute("listProduct", listProduct);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/product/product.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertProduct(req, resp);
                    break;
                case "edit":
                    updateProduct(req, resp);
                    break;
                case "search":
                    searchFormProduct(req, resp);
                    break;
                case "createupload":
//                    insertUpload(req, resp);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product product = new Product();
        boolean flag = true;
        Map<String, String> hasMap = new HashMap<String, String>();
        try {
            for (Part part : req.getParts()) {
                if (part.getName().equals("file")) {
                    String fileName = extractFileName(part);
                    // refines the fileName in case it is an absolute path
                    fileName = new File(fileName).getName();
                    // lưu file ở hệ thống mặc định C:\Users\ADMIN/Uploads
//                part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);
                    if (!fileName.isEmpty() && (fileName.contains(".jpg") || fileName.contains(".png") || fileName.contains(".jpg"))) {
                        // duong dan tren Intellij E:\Servlet\TemplateAdmin\src\main\webapp\image + tên file(filename)
                        part.write("E:\\Servlet\\TemplateAdmin\\src\\main\\webapp\\image\\product\\" + fileName);

                        // source luu tren tomcat(server) E:\apache-tomcat-9.0.64\webapps\ROOT + "\\image() thư mục" + fileName (tên file)
                        String serverRealParth = this.getServletContext().getRealPath("/") + "\\image\\product\\" + fileName;

                        System.out.println("serverRealParth: " + serverRealParth);
                        part.write(serverRealParth);
                        product.setImage("\\image\\product\\" + fileName);
                    } else {
                        flag = false;
                        req.setAttribute("errorImage", "photo cannot be blank");
//                        req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                    }
                }
            }
            int id = Integer.parseInt(req.getParameter("id"));
            product.setId(id);
            String producName = req.getParameter("productName");
            System.out.println("productName: " + producName);
            product.setProductName(producName);
            double price = Double.parseDouble(req.getParameter("price"));
            System.out.println("price: " + price);
            product.setPrice(price);
            double quantity = Double.parseDouble(req.getParameter("quantity"));
            System.out.println("quantity: " + quantity);
            product.setQuantity(quantity);
            //here
            String description = req.getParameter("description");
            System.out.println("description: " + description);
            product.setDescription(description);

            ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
            Validator validator = validatorFactory.getValidator();

            Set<ConstraintViolation<Product>> constraintViolations = validator.validate(product);

            System.out.println("product: " + product);
            if (!constraintViolations.isEmpty()) {
                errors = "<ul style='color: red;'>";
                for (ConstraintViolation<Product> constraintViolation : constraintViolations) {
                    errors += "<li style= font-size: 13px;>" + constraintViolation.getPropertyPath() + " " + constraintViolation.getMessage()
                            + "</li>";
                }
                errors += "</ul>";
                req.setAttribute("user", product);
                req.setAttribute("errors", errors);
                req.setAttribute("errorsCreate", "$.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Error!', text: 'You modified information failed!', class_name: 'color danger' }), !1;");
                System.out.println(this.getClass() + " !constraintViolations.isEmpty()");
                req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
            } else {
                if(quantity <= 0) {
                    flag = false;
                    req.setAttribute("errorQuantity", "quantity cannot be less than 0");
//                    req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                }
                if (price <= 0) {
                    flag = false;
                    req.setAttribute("errorPrice", "price cannot be less than 0");
//                    req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                }
                if (productDAO.findProductName(producName)) {
                    flag = false;
                    req.setAttribute("edit", "edit");
                    req.setAttribute("errorName", "Name already exists!");
                    System.out.println(this.getClass() + " Name exits in database");
                }
                if (flag) {
                    productDAO.updateProduct(product);
                    List<Product> listProduct = productDAO.selectAllProduct();
                    req.setAttribute("listProduct", listProduct);
                    req.setAttribute("successful", "$.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Success', text: 'Edit successful!', class_name: 'color success' }), !1 ");
                    req.getRequestDispatcher("/WEB-INF/admin/product/product.jsp").forward(req, resp);
                } else {
                    // Error: Email exits in database
                    // Error: Country invalid
                    errors = "<ul style='color: red;'>";
                    hasMap.forEach(new BiConsumer<String, String>() {
                        @Override
                        public void accept(String keyError, String valueError) {
                            errors += "<li  style= font-size: 13px;>" + valueError + "</li>";
                        }
                    });
                    errors += "</ul>";
                    req.setAttribute("product", product);
                    req.setAttribute("errors", errors);
                    req.setAttribute("edit", "edit");
                    System.out.println(this.getClass() + " error database and country");
                    req.setAttribute("errorsCreate", "$.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Error!', text: 'You modified information failed!', class_name: 'color danger' }), !1;");
                    req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                }
            }
        } catch (NumberFormatException ex) {
            System.out.println(this.getClass() + " NumberFormatException: User info from requst: " + product);
            errors = "<ul style='color: red;'>"
                    + "<li  style= font-size: 13px;> Input format not right </li>"
                    + "</ul>";
            req.setAttribute("user", product);
            req.setAttribute("edit", "edit");
            req.setAttribute("errors", errors);
            req.setAttribute("errorsCreate", "$.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Error!', text: 'You modified information failed!', class_name: 'color danger' }), !1;");
            req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void insertProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException  {
        Product product = new Product();
        boolean flag = true;
        Map<String, String> hasMap = new HashMap<String, String>();
        System.out.println(this.getClass() + " insertProduct whith validate.");

        try {
            // đọc file ảnh
            for (Part part : req.getParts()) {
                if (part.getName().equals("file")) {
                    String fileName = extractFileName(part);
                    // refines the fileName in case it is an absolute path
                    fileName = new File(fileName).getName();
                    // lưu file ở hệ thống mặc định C:\Users\ADMIN/Uploads
//                part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);
                    if (!fileName.isEmpty() && (fileName.contains(".jpg") || fileName.contains(".png") || fileName.contains(".jpg"))) {
                        // duong dan tren Intellij E:\Servlet\TemplateAdmin\src\main\webapp\image + tên file(filename)
                        part.write("E:\\Servlet\\TemplateAdmin\\src\\main\\webapp\\image\\product\\" + fileName);

                        // source luu tren tomcat(server) E:\apache-tomcat-9.0.64\webapps\ROOT + "\\image() thư mục" + fileName (tên file)
                        String serverRealParth = this.getServletContext().getRealPath("/") + "\\image\\product\\" + fileName;

                        System.out.println("serverRealParth: " + serverRealParth);
                        part.write(serverRealParth);
                        product.setImage("\\image\\product\\" + fileName);
                    } else {
                        flag = false;
                        req.setAttribute("errorImage", "photo cannot be blank");
//                        req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                    }
                }
            }
            String producName = req.getParameter("productName");
            System.out.println("productName: " + producName);
            product.setProductName(producName);
            double price = Double.parseDouble(req.getParameter("price"));
            System.out.println("price: " + price);
            product.setPrice(price);
            double quantity = Double.parseDouble(req.getParameter("quantity"));
            System.out.println("quantity: " + quantity);
            product.setQuantity(quantity);
            //here
            String description = req.getParameter("description");
            product.setDescription(description);
            ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
            Validator validator = validatorFactory.getValidator();

            Set<ConstraintViolation<Product>> constraintViolations = validator.validate(product);

            System.out.println("User: " + product);
            if (!constraintViolations.isEmpty()) {
                errors = "<ul style='color: red;'>";
                for (ConstraintViolation<Product> constraintViolation : constraintViolations) {
                    errors += "<li style= font-size: 13px;>" + constraintViolation.getPropertyPath() + " " + constraintViolation.getMessage()
                            + "</li>";
                }
                errors += "</ul>";
                req.setAttribute("user", product);
                req.setAttribute("errors", errors);

                System.out.println(this.getClass() + " !constraintViolations.isEmpty()");
//                req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
            } else {
                if(quantity <= 0) {
                    flag = false;
                    req.setAttribute("errorQuantity", "quantity cannot be less than 0");
//                    req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                }
                if (price <= 0) {
                    flag = false;
                    req.setAttribute("errorPrice", "price cannot be less than 0");
//                    req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                }
                if (productDAO.findProductName(producName)) {
                    flag = false;
                    req.setAttribute("errorEmail1", "Email already exists!");
                    System.out.println(this.getClass() + " Email exits in database");
                }
                if (flag) {
                    productDAO.insertProduct(product);
                    List<Product> listProduct = productDAO.selectAllProduct();
                    req.setAttribute("listProduct", listProduct);
                    req.setAttribute("successful", "$.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Success', text: 'Add successful!', class_name: 'color success' }), !1 ");
                    req.getRequestDispatcher("/WEB-INF/admin/product/product.jsp").forward(req, resp);
                } else {
                    // Error: Email exits in database
                    // Error: Country invalid
                    errors = "<ul style='color: red;'>";
                    hasMap.forEach(new BiConsumer<String, String>() {
                        @Override
                        public void accept(String keyError, String valueError) {
                            errors += "<li style= font-size: 13px;>" + valueError + "</li>";
                        }
                    });
                    errors += "</ul>";
                    req.setAttribute("product", product);
                    req.setAttribute("errors", errors);
                    System.out.println(this.getClass() + " error database and country");
                    req.setAttribute("errorsCreate", "$.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Error!', text: 'You modified information failed!', class_name: 'color danger' }), !1;");
                    req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                }
            }
        } catch (NumberFormatException ex) {
            System.out.println(this.getClass() + " NumberFormatException: Product info from requst: " + product);
            errors = "<ul style='color: red;'>"
                    + "<li style= font-size: 13px;> Input format not right </li>"
                    + "</ul>";
            req.setAttribute("user", product);
            req.setAttribute("errors", errors);
            req.setAttribute("errorsCreate", "$.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Error!', text: 'You modified information failed!', class_name: 'color danger' }), !1;");
            req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
