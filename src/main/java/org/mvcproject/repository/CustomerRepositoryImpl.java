package org.mvcproject.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mvcproject.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

@Repository("/CustomerRepo")
public class CustomerRepositoryImpl implements CustomerRepository{


	@Autowired
	JdbcTemplate template;

	@Override
	public boolean AddNewCustomer(Customer customer) {
		int value = template.update("insert into customer(customerid, customername, address, customercontact, email) values (?, ?, ?, ?, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, 0);
				ps.setString(2, customer.getCustomername());
				ps.setString(3, customer.getAddress());
				ps.setLong(4, customer.getCustomercontact());
				ps.setString(5, customer.getEmail());
			}
		});
		return value>0 ?true:false;			
	}
	
	@Override
	public List<Customer> getAllCustomer() {
		List<Customer> list=template.query("Select * from customer", new RowMapper<Customer>() {
			@Override
			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer customer=new Customer();
				customer.setCustomerid(rs.getInt(1));
				customer.setCustomername(rs.getString(2));
				customer.setAddress(rs.getString(3));
				customer.setCustomercontact(rs.getLong(4));
				customer.setEmail(rs.getString(5));
				return customer;
			}
		});
		return list.size()>0?list:null;	
	}
	@Override
	public void deleteCustomer(int customerid) {
		template.update("delete from customer where customerid= "+customerid);	

	}
	
	@Override
	public List<Customer> searchCustomer(String customername) {
		List<Customer> list = template.query("SELECT * FROM customer WHERE customername LIKE ?", new Object[] { "%" + customername + "%" },new RowMapper<Customer>() { 
			@Override
			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer customer=new Customer();
				customer.setCustomerid(rs.getInt(1));
				customer.setCustomername(rs.getString(2));
				customer.setAddress(rs.getString(3));
				customer.setCustomercontact(rs.getLong(4));
				customer.setEmail(rs.getString(5));
				
				return customer;
			}
		});			
		return list.size()>0?list:new ArrayList<Customer>();
	}
}
