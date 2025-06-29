package org.mvcproject.repository;
import java.util.List;
import org.mvcproject.model.Product;

public interface ProductRepository {
	public boolean addproducts(Product product);
	public List<Product> getAllproduct();	
	public void deleteProduct(int productid);
	public List<Product> searchProduct(String productname);
}
