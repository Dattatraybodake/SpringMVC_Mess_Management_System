package org.mvcproject.controller;

import java.util.List;
import java.util.Map;

import org.mvcproject.model.Customer;
import org.mvcproject.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CustomerController {
	@Autowired
	CustomerService customerService;

	@RequestMapping(value="/savecustom",method=RequestMethod.POST)
	public String saveData(Customer customer, Map map) {
		boolean isSuccess = customerService.AddNewCustomer(customer);
		if (isSuccess) {
			map.put("msg", "Customer Saved Successful");
		} else {
			map.put("msg", "Error! Failed to insert Customer");
		}
		return "newcustomer";  // Redirect to index.jsp after registration
	}

	public List<Customer> getallcustomer()
	{
		List<Customer> list=customerService.getAllCustomer();
		return list;
	}
	@RequestMapping(value="/viewcustom", method=RequestMethod.GET)
	public String viewAllCustomer(Map map)
	{
		
		List<Customer> list=customerService.getAllCustomer();
		map.put("CustomerList", this.getallcustomer());

		return "viewcustomer";
	}

	@RequestMapping("/deletecust")
	public String deleteCustomer(@RequestParam("customerid") Integer customerid, Map map)
	{
		customerService.deleteCustomer(customerid);
		List<Customer> list=customerService.getAllCustomer();
		map.put("CustomerList", this.getallcustomer());
		return "viewcustomer";
	}

	@RequestMapping("/searchName")
	@ResponseBody
	public String searchNameURL(@RequestParam("n") String customername) {
		List<Customer> list=customerService.searchCustomer(customername.trim());
		System.out.println(customername);
		System.out.println(list);
		String str="";
		str=str+"<table class='table'> <tr><th>Customer id</th><th>Customer Name</th><th>Customer Contact</th><th>Email</th><th>Address</th></tr>";

		for(Customer c:list)
		{
			str=str+"<tr>";
			str=str+"<td>"+c.getCustomerid()+"</td>";
			str=str+"<td>"+c.getCustomername()+"</td>";
			str=str+"<td>"+c.getCustomercontact()+"</td>";
			str=str+"<td>"+c.getEmail()+"</td>";
			str=str+"<td>"+c.getAddress()+"</td>";
			str=str+"</tr>";
		}
		str=str+"<table>";
		
//		System.out.println("String is "+str);
		return str; 
	}
}
