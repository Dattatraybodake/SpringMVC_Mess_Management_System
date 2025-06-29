package org.mvcproject.service;
import java.util.List;
import org.mvcproject.model.Customer;
import org.mvcproject.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerRepository custumrepo;
	
	
	@Override
	public boolean AddNewCustomer(Customer customer) {
		return custumrepo.AddNewCustomer(customer);
	}
	@Override
	public List<Customer> getAllCustomer() {
		return custumrepo.getAllCustomer();
	}
	@Override
	public void deleteCustomer(int customerid) {
		custumrepo.deleteCustomer(customerid);
	}
	@Override
	public List<Customer> searchCustomer(String customername) {
		return custumrepo.searchCustomer(customername);
	}
}
	
