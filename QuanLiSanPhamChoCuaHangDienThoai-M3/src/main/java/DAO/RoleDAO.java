package DAO;

import model.Country;
import model.Role;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoleDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/casestudym3?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456789";
    private PreparedStatement stmt;
    private int noOfRecords;
    private static final String SELECT_ALL_ROLE = "select * from role;";
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
    public List<Role> selectAllRole() {
        List<Role> listRole = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ROLE)) {
            System.out.println(this.getClass() + "selectAllRole: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String country = rs.getString("userType");
                listRole.add(new Role(id, country));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listRole;
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
