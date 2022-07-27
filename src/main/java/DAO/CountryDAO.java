package DAO;

import model.Country;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CountryDAO implements ICountryDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/casestudym3?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456789";

    private static final String SELECT_ALL_COUNTRY = "SELECT * FROM country;";
    private static final String SELECT_COUNTRY_BY_ID = "select * from country where id =?;";
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
    public void insertCountry(Country country) throws SQLException {

    }

    @Override
    public Country selectCountry(int id) {
        Country country = null;
        try (Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_COUNTRY_BY_ID)) {
            preparedStatement.setInt(1, id);
            System.out.println(this.getClass() + " selectCountry: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("Country");
                country = new Country(id, name);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return country;
    }

    @Override
    public List<Country> selectAllCountry() {
        List<Country> listCountry = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_COUNTRY)) {
            System.out.println(this.getClass() + "selectAllCountry: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String country = rs.getString("Country");
                listCountry.add(new Country(id, country));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listCountry;
    }

    @Override
    public boolean deleteCountry(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateCountry(Country country) throws SQLException {
        return false;
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
