package org.mvcproject.service;

import java.util.List;

import org.mvcproject.model.Customer;
import org.springframework.stereotype.Service;
@Service
public interface CustomerService {
	public boolean AddNewCustomer(Customer customer);
	public List<Customer> getAllCustomer();
	public void deleteCustomer(int customerid);
	public List<Customer> searchCustomer(String customername);
}
