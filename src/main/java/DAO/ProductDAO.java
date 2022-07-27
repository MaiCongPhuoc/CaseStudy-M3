package DAO;

import model.Product;
import model.User;

import java.math.BigDecimal;
import java.sql.*;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class ProductDAO implements IProductDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/casestudym3?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456789";
    private PreparedStatement stmt;
    private int noOfRecords;
    private static final String SELECT_ALL_PRODUCTS = "select * from products;";
    private static final String DELETE_PRODUCTS_SQL = "delete from products where id = ?;";
    private static final String SELECT_PRODUCTS_BY_EMAIL = "select u.idUser, u.image, u.userName, u.password, u.idRole, u.email, u.idCountry, u.phone " +
            "from products as u inner join country as c " +
            "where u.email = ? and u.idCountry = c.id;";
    private static final String INSERT_PRODUCTS_SQL = "INSERT INTO products (image, productName, price, quantity, description) VALUES " +
            " (?, ?, ?, ?,?);";
    private static final String SELECT_PRODUCTS_BY_ID = "select id,image,productName, price, quantity, description from products where id =?;";
    private static final String UPDATE_PRODUCTS_SQL = "update products set image = ?, productName = ?, price = ?, quantity = ?, description = ? where id = ?;";

    private static final String SELECT_PRODUCTNAME = "SELECT productName FROM products;";

    public ProductDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void insertProduct(Product product) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCTS_SQL)) {
            preparedStatement.setString(1, product.getImage());
            preparedStatement.setString(2, product.getProductName());
            preparedStatement.setDouble(3, product.getPrice());
            preparedStatement.setDouble(4, product.getQuantity());
            preparedStatement.setString(5, product.getDescription());
            System.out.println(this.getClass() + " insertProduct: " + preparedStatement);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Product selectProduct(int id) {
        Product product = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCTS_BY_ID)) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String image = rs.getString("image");
                String productName = rs.getString("productName");
                double price = rs.getDouble("price");
                double quantity = rs.getDouble("quantity");
                String description = rs.getString("description");
                product = new Product(id, image, productName, price, quantity, description);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return product;
    }

    @Override
    public List<Product> selectAllProduct() {
        List<Product> listProduct = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCTS)) {
            System.out.println(this.getClass() + "selectAllProduct: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String image = rs.getString("image");
                String productName = rs.getString("productName");
                double price =  rs.getDouble("price");
                double quantity = rs.getDouble("quantity");
                String description = rs.getString("description");
                listProduct.add(new Product(id, image, productName, price, quantity, description));
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return listProduct;
    }

    @Override
    public boolean deleteProduct(int id) throws SQLException {
        boolean rowDele;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PRODUCTS_SQL)) {
            preparedStatement.setInt(1, id);
            rowDele = preparedStatement.executeUpdate() > 0;
        }
        return rowDele;
    }

    public boolean findProductName(String name) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCTNAME)) {
            System.out.println(this.getClass() + "findProductName: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if (name.equals(rs.getString("productName"))) {
                    return true;
                }
            }
        }
        return false;
    }

        public List<Product> findProductNameAndPrice(String name, int price) throws SQLException, NumberFormatException {
        String query = "";
        List<Product> listProduct = new ArrayList<>();
        Product product = null;
        Connection connection = getConnection();
        try {
            if (name.isEmpty() || name == null){
                query = "select * from products where price like ?";
                stmt = connection.prepareStatement(query);
                System.out.println(this.getClass() + "findProductName: " + stmt);
                stmt.setInt(1, '%' + price + '%');
                System.out.println(stmt);
            } else if (price == 0){
                query = "select * from products where productName like ?";
                stmt = connection.prepareStatement(query);
                System.out.println(this.getClass() + "findProductName: " + stmt);
                stmt.setString(1, '%' + name + '%');
                System.out.println(stmt);
            }
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                product = new Product();
                product.setId(rs.getInt("id"));
                product.setImage(rs.getString("image"));
                product.setProductName(rs.getString("productName"));
                product.setPrice(rs.getDouble("price"));
                product.setQuantity(rs.getDouble("quantity"));
                product.setDescription(rs.getString("description"));
                listProduct.add(product);
            }
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProduct;
    }

    @Override
    public boolean updateProduct(Product product) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_PRODUCTS_SQL)) {
            System.out.println(this.getClass() + " updateProduct: " + statement);
            statement.setString(1, product.getImage());
            statement.setString(2, product.getProductName());
            statement.setDouble(3, product.getPrice());
            statement.setDouble(4, product.getQuantity());
            statement.setString(5, product.getDescription());
            statement.setInt(6, product.getId());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public List<Product> selectProductPaging(int offset, int noOfRecords) {
        String query = "select SQL_CALC_FOUND_ROWS * from products limit " + offset + ", " + noOfRecords;
        List<Product> listProduct = new ArrayList<>();
        Product product = null;
        Connection connection = null;
        try {
            connection = getConnection();
            stmt = connection.prepareStatement(query);
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                product = new Product();
                product.setId(rs.getInt("id"));
                product.setImage(rs.getString("image"));
                product.setProductName(rs.getString("productName"));
                product.setPrice(rs.getDouble("price"));
                product.setQuantity(rs.getDouble("quantity"));
                product.setDescription(rs.getString("description"));
                listProduct.add(product);
            }
            rs.close();
            rs = stmt.executeQuery("SELECT FOUND_ROWS()");
            if (rs.next())
                this.noOfRecords = rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null)
                    stmt.close();
                if (connection != null)
                    connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return listProduct;
    }


    public List<Product> selectProductPagging(int offset, int noOfRecords, String q, int idCountry) {
        List<Product> listProduct = new ArrayList<>();
        Product product = null;
        Connection connection = getConnection();
        try {
            if (idCountry != -1) {
                String query = "select SQL_CALC_FOUND_ROWS * from products where productName like ? and id = ? limit " + offset + ", " + noOfRecords;

                stmt = connection.prepareStatement(query);
                stmt.setString(1, '%' + q + '%');
                stmt.setInt(2, idCountry);
            } else if (idCountry == -1) {
                String query = "select SQL_CALC_FOUND_ROWS * from products where productName like ? limit " + offset + ", " + noOfRecords;
                stmt = connection.prepareStatement(query);
                stmt.setString(1, '%' + q + '%');
            }
            System.out.println(stmt);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                product = new Product();
                product.setId(rs.getInt("idUser"));
                product.setImage(rs.getString("image"));
                product.setProductName(rs.getString("userName"));
                product.setPrice(rs.getDouble("password"));
                product.setQuantity(rs.getDouble("idRole"));
                product.setDescription(rs.getString("email"));
                listProduct.add(product);
            }
            rs.close();

            rs = stmt.executeQuery("SELECT FOUND_ROWS()");
            if (rs.next())
                this.noOfRecords = rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null)
                    stmt.close();
                if (connection != null)
                    connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return listProduct;
    }
    public String convertDollar(double price) {
        Locale lc = new Locale("ENGLISH","US");
        NumberFormat nf = NumberFormat.getCurrencyInstance(lc);

        String formatMoney =  nf.format(price);
        return formatMoney;
    }

    public static String displayVND(BigDecimal price) {
        String patternVND = " $ ";
        DecimalFormat decimalFormat = new DecimalFormat(patternVND);
        return decimalFormat.format(price);
    }

    public static String quantityVND(BigDecimal quantity) {
        String patternQuantity = " pcs ";
        DecimalFormat decimalFormat = new DecimalFormat(patternQuantity);
        return decimalFormat.format(quantity);
    }


    public int getNoOfRecords() {
        return noOfRecords;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
