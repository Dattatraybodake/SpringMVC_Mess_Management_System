package org.mvcproject.service;

import java.util.List;

import org.mvcproject.model.Employee;
import org.mvcproject.model.Product;
public interface ProductService {
	public boolean addproducts(Product product);
	public List<Product> getAllproduct();
	public void deleteProduct(int productid);
	public List<Product> searchproduct(String productname);
	}


