package cotroller;

import DAO.CountryDAO;
import DAO.ICountryDAO;
import DAO.RoleDAO;
import DAO.UserDAO;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.*;
import java.util.function.BiConsumer;
import java.util.regex.Pattern;

@WebServlet(urlPatterns = "/admin")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ICountryDAO iCountryDAO;
    private UserDAO userDAO;
    private RoleDAO roleDAO;
    private String errors = "";

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
        iCountryDAO = new CountryDAO();
        roleDAO = new RoleDAO();
        if (this.getServletContext().getAttribute("listCountry") == null) {
            this.getServletContext().setAttribute("listCountry", iCountryDAO.selectAllCountry());
        }
        if (this.getServletContext().getAttribute("listRole") == null) {
            this.getServletContext().setAttribute("listRole", roleDAO.selectAllRole());
        }
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
                    showCreateForm(req, resp);
                    break;
                case "index":
                    indexUser(req, resp);
//                    showLoginForm(req, resp);
                    break;
                case "delete":
                    deleteUser(req, resp);
                    break;
                case "edit":
                    editFormUser(req, resp);
                    break;
                case "list":
                    listUserPagging(req, resp);
                    break;
                default:
                    showLoginForm(req, resp);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    private void editFormUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        User existingUser = userDAO.selectUser(id);
        req.setAttribute("user", existingUser);
        req.setAttribute("edit", "edit");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/user/create.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void deleteUser(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        userDAO.deleteUser(id);
        List<User> listUser = userDAO.selectAllUsers();
        req.setAttribute("listUser", listUser);
        listUserPagging(req, resp);
    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/user/create.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void indexUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/user/index.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showLoginForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/user/login.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void listUserPagging(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = 1;
        int recordsPerPage = 5;
        String s = "";
        int idCountry = -1;
        if (req.getParameter("s") != null) {
            s = req.getParameter("s");
        }
        if (req.getParameter("idCountry") != null) {
            idCountry = Integer.parseInt(req.getParameter("idCountry"));
        }
        if (req.getParameter("page") != null) {
            page = Integer.parseInt(req.getParameter("page"));
        }
        // lấy số lượng dòng cho mỗi trang
        List<User> listUser = userDAO.selectUserPagging((page - 1) * recordsPerPage, recordsPerPage, s, idCountry);
        int noOfRecords = userDAO.getNoOfRecords();
        // đánh số trang
        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
//        List<Role> listRole = roleDAO.selectAllRole();
        req.setAttribute("listUser", listUser);
        req.setAttribute("noOfPages", noOfPages);
        req.setAttribute("currentPage", page);
        //req.setAttribute("successful", "return  $.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Success', text: 'you have edit added!', class_name: 'color success' }), !1; ");
        req.setAttribute("s", s);
        req.setAttribute("idCountry", idCountry);
        RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/admin/user/list.jsp");
        view.forward(req, resp);
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
                    insertUser(req, resp);
                    break;
                case "edit":
                    updateUser(req, resp);
                    break;
                case "login":
                    loginForm(req, resp);
                    break;
                case "list":
                    listUserPagging(req, resp);
                    break;
                case "createupload":
                    insertUpload(req, resp);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void loginForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String userName = req.getParameter("login");
        String password = req.getParameter("password");
        List<User> userList = userDAO.selectAllUsers();
        boolean flag = true;
        for (User user : userList) {
            if (user.getUserName().equals(userName) && user.getPassword().equals(password)) {
                HttpSession session = req.getSession();
                session.setAttribute("role", user.getIdRole());
                session.setAttribute("userName", userName);
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/user/index.jsp");
                requestDispatcher.forward(req, resp);
                flag = false;
                break;
            }
        }
        if (flag) {
            req.setAttribute("errorsLogin", "Incorrect account or password, please re-enter!");
            req.setAttribute("errorLogin", "return $.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Error!', text: 'Incorrect account or password!', class_name: 'color danger' }), !1;");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/admin/user/login.jsp");
            requestDispatcher.forward(req, resp);
        }
    }

    private void insertUser(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        User user = new User();
        boolean flag = true;
        Map<String, String> hasMap = new HashMap<String, String>();
        System.out.println(this.getClass() + " insertUser whith validate.");

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
                        part.write("E:\\Servlet\\TemplateAdmin\\src\\main\\webapp\\image\\" + fileName);

                        // source luu tren tomcat(server) E:\apache-tomcat-9.0.64\webapps\ROOT + "\\image() thư mục" + fileName (tên file)
                        String serverRealParth = this.getServletContext().getRealPath("/") + "\\image\\" + fileName;

                        System.out.println("serverRealParth: " + serverRealParth);
                        part.write(serverRealParth);
                        user.setImage("\\image\\" + fileName);
                    } else {
                        req.setAttribute("errorImage", "photo cannot be blank");
//                        req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                    }
                }
            }
            String name = req.getParameter("userName");
            user.setUserName(name.replace(" ", ""));
            String password = req.getParameter("password");
            user.setPassword(password.replace(" ", ""));
            String email = req.getParameter("email");
            user.setEmail(email.replace(" ", ""));
            int idCountry = Integer.parseInt(req.getParameter("country"));
            user.setIdCountry(idCountry);
            String phone = req.getParameter("phone");
            user.setPhone(phone.replace(" ", ""));
            int role = Integer.parseInt(req.getParameter("role"));
            user.setIdRole(role);
            System.out.println(this.getClass() + " insertUser ");
            if (!userDAO.isPhoneValid(phone)) {
                flag = false;
                req.setAttribute("errorPhone", "The phone number must start from 0 and have 10 digits");
            }
            ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
            Validator validator = validatorFactory.getValidator();

            Set<ConstraintViolation<User>> constraintViolations = validator.validate(user);

            System.out.println("User: " + user);
            if (!constraintViolations.isEmpty()) {
                errors = "<ul style='color: red;'>";
                for (ConstraintViolation<User> constraintViolation : constraintViolations) {
                    errors += "<li style= font-size: 13px;>" + constraintViolation.getPropertyPath() + " " + constraintViolation.getMessage()
                            + "</li>";
                }
                errors += "</ul>";
                req.setAttribute("user", user);
                req.setAttribute("errors", errors);

                System.out.println(this.getClass() + " !constraintViolations.isEmpty()");
                req.getRequestDispatcher("/WEB-INF/admin/user/create.jsp").forward(req, resp);
            } else {
                if (userDAO.selectUserByEmail(email) != null) {
                    flag = false;
                    req.setAttribute("errorEmail1", "Email already exists!");
                    System.out.println(this.getClass() + " Email exits in database");
                }
                if (iCountryDAO.selectCountry(idCountry) == null) {
                    flag = false;
                    req.setAttribute("errorCountry", "Country value invalid");
                }
                if (userDAO.findPhone(phone)) {
                    flag = false;
                    req.setAttribute("errorPhone", "Country value invalid");
                }
                if (flag) {
                    userDAO.insertUser(user);
                    List<User> listUser = userDAO.selectAllUsers();
                    req.setAttribute("listUser", listUser);
                    listUserPagging(req, resp);
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
                    req.setAttribute("user", user);
                    req.setAttribute("errors", errors);
                    System.out.println(this.getClass() + " error database and country");
                    req.getRequestDispatcher("/WEB-INF/admin/user/create.jsp").forward(req, resp);
                }
            }
        } catch (NumberFormatException ex) {
            System.out.println(this.getClass() + " NumberFormatException: User info from requst: " + user);
            errors = "<ul style='color: red;'>"
                    + "<li style= font-size: 13px;> Input format not right </li>"
                    + "</ul>";
            req.setAttribute("user", user);
            req.setAttribute("errors", errors);
            req.getRequestDispatcher("/WEB-INF/admin/user/create.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void insertUpload(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void updateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        boolean flag = true;
        Map<String, String> hasMap = new HashMap<String, String>();
        System.out.println(this.getClass() + "insertUser whith validate.");

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
                        part.write("E:\\Servlet\\TemplateAdmin\\src\\main\\webapp\\image\\" + fileName);

                        // source luu tren tomcat(server) E:\apache-tomcat-9.0.64\webapps\ROOT + "\\image() thư mục" + fileName (tên file)
                        String serverRealParth = this.getServletContext().getRealPath("/") + "\\image\\" + fileName;

                        System.out.println("serverRealParth: " + serverRealParth);
                        part.write(serverRealParth);
                        user.setImage("\\image\\" + fileName);
                    } else {
                        req.setAttribute("errorImage", "photo cannot be blank");
//                        req.getRequestDispatcher("/WEB-INF/admin/product/add-product.jsp").forward(req, resp);
                    }
                }
            }
            int id = Integer.parseInt(req.getParameter("id"));
            user.setIdUser(id);
            String name = req.getParameter("userName");
            user.setUserName(name);
            String password = req.getParameter("password");
            user.setPassword(password);
            String email = req.getParameter("email");
            user.setEmail(email);
            int idCountry = Integer.parseInt(req.getParameter("country"));
            user.setIdCountry(idCountry);
            String phone = req.getParameter("phone");
            user.setPhone(phone);
            int role = Integer.parseInt(req.getParameter("role"));
            user.setIdRole(role);
            if (!userDAO.isPhoneValid(phone)) {
                flag = false;
                req.setAttribute("errorPhone", "The phone number must start from 0 and have 10 digits");
            }

            ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
            Validator validator = validatorFactory.getValidator();

            Set<ConstraintViolation<User>> constraintViolations = validator.validate(user);

            System.out.println("User: " + user);
            if (!constraintViolations.isEmpty()) {
                errors = "<ul style='color: red;'>";
                for (ConstraintViolation<User> constraintViolation : constraintViolations) {
                    errors += "<li style= font-size: 13px;>" + constraintViolation.getPropertyPath() + " " + constraintViolation.getMessage()
                            + "</li>";
                }
                errors += "</ul>";
                req.setAttribute("user", user);
                req.setAttribute("errors", errors);
                req.setAttribute("errorsCreate", "return $.extend($.gritter.options, { position: 'bottom-right' }), $.gritter.add({ title: 'Error!', text: 'You modified information failed!', class_name: 'color danger' }), !1;");
                System.out.println(this.getClass() + " !constraintViolations.isEmpty()");
                req.getRequestDispatcher("/WEB-INF/admin/user/create.jsp").forward(req, resp);
            } else {
                if (userDAO.selectUserByEmail(email) != null) {
                    flag = false;
                    hasMap.put("email", "Email already exists!");
                    req.setAttribute("errorEmail1", "Email already exists!");
                    System.out.println(this.getClass() + " Email exits in database");
                }
                if (iCountryDAO.selectCountry(idCountry) == null) {
                    flag = false;
                    hasMap.put("country", "Country value invalid");
                    req.setAttribute("errorCountry", "Country value invalid");
                }
                if (flag) {
                    userDAO.updateUser(user);
                    List<User> listUser = userDAO.selectAllUsers();
                    req.setAttribute("listUser", listUser);
                    req.setAttribute("successful", "$.gritter.add({ title: 'Success', text: 'Edit successful!', class_name: 'color success' }),$.extend($.gritter.options,{position:'bottom-right'})");
                    listUserPagging(req, resp);
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
                    req.setAttribute("user", user);
                    req.setAttribute("errors", errors);
                    System.out.println(this.getClass() + " error database and country");
                    req.getRequestDispatcher("/WEB-INF/admin/user/create.jsp").forward(req, resp);
                }
            }
        } catch (NumberFormatException ex) {
            System.out.println(this.getClass() + " NumberFormatException: User info from requst: " + user);
            errors = "<ul style='color: red;'>"
                    + "<li style= font-size: 13px;> Input format not right </li>"
                    + "</ul>";
            req.setAttribute("user", user);
            req.setAttribute("errors", errors);
            req.getRequestDispatcher("/WEB-INF/admin/user/create.jsp").forward(req, resp);
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

    public File getFolderUpload() {
        File folderUpload = new File(System.getProperty("user.home") + "/Uploads");
        System.out.println("save image: " + System.getProperty("user.home") + "/Uploads");
        if (!folderUpload.exists()) {
            folderUpload.mkdirs();
        }
        return folderUpload;
    }
}
