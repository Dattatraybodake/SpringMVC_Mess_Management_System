package org.mvcproject.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mvcproject.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("/productrepo")
public class ProductRepoImpl implements ProductRepository {

	@Autowired
	JdbcTemplate template;

	@Override
	public boolean addproducts(Product product) {
 
	    int value = template.update("INSERT INTO product (productname, categoryid) VALUES (?, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, product.getProductname());
				ps.setInt(2, product.getCategoryid());
			}
		});
		return value>0 ?true:false;	
	}

	@Override
	public List<Product> getAllproduct() 
	{
		List<Product>list=template.query("select * from product", new RowMapper<Product>()
				{
					@Override
					public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
						Product product=new Product();
						product.setProductid(rs.getInt(1));
						product.setProductname(rs.getString(2));
						return product;
					}
				});
		return list.size()>0?list:null;
	}

	@Override
	public void deleteProduct(int productid) {
		template.update("delete from product where productid="+productid);
	}

	@Override
	public List<Product> searchProduct(String productname) {
		List<Product> list = template.query("SELECT * FROM product WHERE productname LIKE ?",new Object[] {"%" + productname + "%" }, new RowMapper<Product>()
				{

					@Override
					public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
						Product product = new Product();
						product.setProductid(rs.getInt(1));
						product.setProductname(rs.getString(2));
						product.setProductprice(rs.getInt(3));
						return product;
					}
			
				});
		return list.size()>0?list:new ArrayList<Product>();
	}	
}