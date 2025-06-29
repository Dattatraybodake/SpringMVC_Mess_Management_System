package org.mvcproject.service;

import java.util.List;
import org.mvcproject.model.Product;
import org.mvcproject.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired 
	ProductRepository productRepo;
	@Override
	public boolean addproducts(Product product) {
		// TODO Auto-generated method stub
		return productRepo.addproducts(product);
	}
	@Override
	public List<Product> getAllproduct() {
		// TODO Auto-generated method stub
		return productRepo.getAllproduct();
	}
	@Override
	public void deleteProduct(int productid) {
		// TODO Auto-generated method stub
		productRepo.deleteProduct(productid);
		
	}
	@Override
	public List<Product> searchproduct(String productname) {
		// TODO Auto-generated method stub
		return productRepo.searchProduct(productname);
	}
}
