package DAO;

import model.Product;
import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {
    void insertProduct(Product product) throws SQLException;

    Product selectProduct(int id);

    List<Product> selectAllProduct();

    boolean deleteProduct(int id) throws SQLException;

    boolean updateProduct(Product product) throws SQLException;

//    phân trang
    public List<Product> selectProductPaging(int offset, int noOfRecords);
}
