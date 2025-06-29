package org.mvcproject.repository;

import java.util.List;

import org.mvcproject.model.Customer;

public interface CustomerRepository {
	
	public boolean AddNewCustomer(Customer customer);
	public List<Customer> getAllCustomer();
	public void deleteCustomer(int customerid);
	public List<Customer> searchCustomer(String customername);
}
