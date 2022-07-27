package DAO;

import model.User;

import java.sql.*;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

public class UserDAO implements IUserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/casestudym3?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456789";
    private PreparedStatement stmt;
    private int noOfRecords;
    private static final String PHONE_REGEX = "^[0][1-9][0-9]{8}$";

    private static final String SELECT_ALL_USERS = "select * from users;";
    private static final String DELETE_USERS_SQL = "delete from users where idUser = ?;";
    private static final String SELECT_USER_BY_EMAIL = "select u.idUser, u.image, u.userName, u.password, u.idRole, u.email, u.idCountry, u.phone " +
            "from users as u inner join country as c " +
            "where u.email = ? and u.idCountry = c.id;";
    private static final String INSERT_USERS_SQL = "INSERT INTO users (image, userName, password, idRole, email, idCountry, phone) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?);";
    private static final String SELECT_USER_BY_ID = " select idUser,image,userName,password,idRole,email,idCountry,phone from users where idUser =?;";
    private static final String UPDATE_USERS_SQL = "update users set image = ?, userName = ?,password = ?,idRole= ?,email= ?, idCountry = ?, phone = ? where idUser = ?;";

    private static  final String SELECT_USERNAME = "SELECT userName FROM users;";
    private static  final String SELECT_PASSWORD = "SELECT password FROM users;";
    private static  final String SELECT_PHONE = "SELECT phone FROM users;";
    public UserDAO() {
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
    public void insertUser(User user) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            System.out.println(this.getClass() + " insertUser: " + preparedStatement);
            preparedStatement.setString(1, user.getImage());
            preparedStatement.setString(2, user.getUserName());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setInt(4, user.getIdRole());
            preparedStatement.setString(5, user.getEmail());
            preparedStatement.setInt(6, user.getIdCountry());
            preparedStatement.setString(7, user.getPhone());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public User selectUser(int id) {
        User user = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String image = rs.getString("image");
                String name = rs.getString("userName");
                String password = rs.getString("password");
                int idRole = rs.getInt("idRole");
                String email = rs.getString("email");
                int idCountry = rs.getInt("idCountry");
                String phone = rs.getString("phone");
                user = new User(id, image, name, password, idRole, email, idCountry, phone);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    @Override
    public List<User> selectAllUsers() {
        List<User> listUser = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
            System.out.println(this.getClass() + "selectAllUsers: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int idUser = rs.getInt("idUser");
                String image = rs.getString("image");
                String userName = rs.getString("userName");
                String password = rs.getString("password");
                int idRole = rs.getInt("idRole");
                String email = rs.getString("email");
                int idCountry = rs.getInt("idCountry");
                String phone = rs.getString("phone");
                listUser.add(new User(idUser, image, userName, password, idRole, email, idCountry, phone));
            }

        } catch (SQLException e) {
            printSQLException(e);
        }
        return listUser;
    }

    public boolean findUserName(String name) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USERNAME)) {
            System.out.println(this.getClass() + "findUserName: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if(name.equals(rs.getString("userName"))){
                    return true;
                }
            }
        }
        return false;
    }
    public boolean findPassword(String name) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PASSWORD)) {
            System.out.println(this.getClass() + "listPassword: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if(name.equals(rs.getString("password"))){
                    return true;
                }
            }
        }
        return false;
    }
    public boolean findPhone(String phone) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PHONE)) {
            System.out.println(this.getClass() + "findPhone: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if(phone.equals(rs.getString("phone"))){
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        boolean rowDele;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USERS_SQL)) {
            preparedStatement.setInt(1, id);
            rowDele = preparedStatement.executeUpdate() > 0;
        }
        return rowDele;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL)) {
            System.out.println(this.getClass() + " statement: " + statement);
            statement.setString(1, user.getImage());
            statement.setString(2, user.getUserName());
            statement.setString(3, user.getPassword());
            statement.setInt(4, user.getIdRole());
            statement.setString(5, user.getEmail());
            statement.setInt(6, user.getIdCountry());
            statement.setString(7, user.getPhone());
            statement.setInt(8, user.getIdUser());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public List<User> selectUserPaging(int offset, int noOfRecords) {
        String query = "select SQL_CALC_FOUND_ROWS * from users limit " + offset + ", " + noOfRecords;
        List<User> list = new ArrayList<>();
        User user = null;
        Connection connection = null;
        try {
            connection = getConnection();
            stmt = connection.prepareStatement(query);
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                user = new User();
                user.setIdUser(rs.getInt("idUser"));
                user.setImage(rs.getString("image"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setIdRole(rs.getInt("idRole"));
                user.setEmail(rs.getString("email"));
                user.setIdCountry(rs.getInt("idCountry"));
                user.setPhone(rs.getString("phone"));
                list.add(user);
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
        return list;
    }



    public boolean isPhoneValid(String number) {
        return Pattern.compile(PHONE_REGEX).matcher(number).matches();
    }

    public List<User> selectUserPagging(int offset, int noOfRecords, String q, int idCountry) {
        List<User> list = new ArrayList<>();
        User user = null;
        Connection connection = getConnection();
        try {
            if (idCountry != -1) {
                String query = "select SQL_CALC_FOUND_ROWS * from users where userName like ? and idCountry = ? limit " + offset + ", " + noOfRecords;

                stmt = connection.prepareStatement(query);
                stmt.setString(1, '%' + q + '%');
                stmt.setInt(2, idCountry);
            } else if( idCountry == -1) {
                String query = "select SQL_CALC_FOUND_ROWS * from users where userName like ? limit " + offset + ", " + noOfRecords;
                stmt = connection.prepareStatement(query);
                stmt.setString(1, '%' + q + '%');
            }

            System.out.println(stmt);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                user = new User();
                user.setIdUser(rs.getInt("idUser"));
                user.setImage(rs.getString("image"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setIdRole(rs.getInt("idRole"));
                user.setEmail(rs.getString("email"));
                user.setIdCountry(rs.getInt("idCountry"));
                user.setPhone(rs.getString("phone"));
                list.add(user);
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
        return list;
    }

    public User selectUserByEmail(String _email) {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_EMAIL)) {
            preparedStatement.setString(1, _email);
            System.out.println(this.getClass() + " selectUserByEmail: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idUser");
                String image = rs.getString("image");
                String name = rs.getString("userName");
                String password = rs.getString("password");
                int role = rs.getInt("idRole");
                String email = rs.getString("email");
                int idCountry = rs.getInt("idCountry");
                String phone = rs.getString("phone");
                user = new User(id, image, name, password, role, email, idCountry, phone);
                return user;
            }
            return null;
        } catch (SQLException e) {
            printSQLException(e);
            return null;
        }
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
