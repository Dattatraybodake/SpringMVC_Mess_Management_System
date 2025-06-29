package org.mvcproject.controller;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.mvcproject.model.Bill;
import org.mvcproject.model.Category;
import org.mvcproject.model.Customer;
import org.mvcproject.model.Product;
import org.mvcproject.service.BillingService;
import org.mvcproject.service.CategoryService;
import org.mvcproject.service.CustomerService;
import org.mvcproject.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BillController {
	@Autowired
	BillingService billingservice;
	
	@Autowired
	CustomerService custservice;
	
	@Autowired
	ProductService productservice;
	
	@Autowired
	CategoryService catservice;
	
	@RequestMapping("/order")
	public String newBill(Model model)
	{
		List<Customer> cust=custservice.getAllCustomer();
		List<Category> cat=catservice.getAllcategory();
		List<Product> product= productservice.getAllproduct();
		
		model.addAttribute("cust", cust);
		model.addAttribute("cat", cat);
		model.addAttribute("p", product);
		
		return "neworders";
	}

	@RequestMapping(value = "/savebill", method = RequestMethod.POST)
	public String saveBill(@RequestParam("custid") int customerid,
	                        @RequestParam("catid") int categoryid,
	                        @RequestParam("prodid") int productid,
	                        @RequestParam("invoiceid") String invoiceid,
	                        @RequestParam("price") String priceStr,
	                        @RequestParam("quantity") String quantityStr,
	                        @RequestParam("gst") String gstStr,
	                        Model model) {
	    
	    // Check if any of the required fields are empty
	    if (priceStr.isEmpty() || quantityStr.isEmpty() || gstStr.isEmpty()) {
	        model.addAttribute("msg", "Price, Quantity, and GST must not be empty.");
	        return "neworders";  // Return to the form
	    }

//	     Convert String inputs to float/int
	    float price;
	    int quantity;
	    float gst;
	    
	    try {
	        price = Float.parseFloat(priceStr);
	        quantity = Integer.parseInt(quantityStr);
	        gst = Float.parseFloat(gstStr);
	    } catch (NumberFormatException e) {
	        model.addAttribute("msg", "Invalid number format. Please enter valid numbers.");
	        return "neworders";  // Return to the form
	    }

	    // Calculate Basic Amount
	    float basicamount = price * quantity;

	    // Calculate GST Amount
	    float gstAmount = (gst / 100) * basicamount;

	    // Calculate Grand Total
	    float grandtotal = basicamount + gstAmount;

	    // Create Bill object with calculated values
	    Bill bill = new Bill();
	    bill.setCustomerid(customerid);
	    bill.setCategoryid(categoryid);
	    bill.setProductid(productid);
	    bill.setInvoiceid(invoiceid);
	    bill.setPrice(price);
	    bill.setQuantity(quantity);
	    bill.setGst(gst);
	    bill.setBasicamount(basicamount);
	    bill.setGrandtotal(grandtotal);
	    
	    // Save the bill to the database
	    boolean isSaved = billingservice.addbill(bill);
	    
	    if (isSaved) {
	        model.addAttribute("msg", "New Order Added SuccessFully!");
	    } else {
	        model.addAttribute("msg", "Error in add new order! Please try Again");
	    }
	    
	    // Re-populate the model for the form
	    model.addAttribute("cust", custservice.getAllCustomer());
	    model.addAttribute("cat", catservice.getAllcategory());
	    model.addAttribute("p", productservice.getAllproduct());
	    return "neworders";
	}
	
	public List<Bill> getallbill()
	{
		List<Bill> list=billingservice.getAllBill();
		return list;	
	}
	
	@RequestMapping(value="/vieworder", method=RequestMethod.GET)
	public String viewAllBill(Map<String, Object> map) {
	    List<Bill> list = billingservice.getAllBill();
	    map.put("BillList", this.getallbill());
	    return "vieworders"; 
	}
	
	@RequestMapping("/searchsales")
	@ResponseBody
	public String searchsales(@RequestParam("n") Date purchaseDate)
	{
		List<Bill> list = billingservice.searchsales(purchaseDate);
		System.out.println(list);
		String str = "";
		str=str+"<table class='table'> <tr><th>Customer id</th><th>category id</th> <th>Product id</th><th>Invoice id</th> <th>Price</th> <th>GST</th> <th>basic Amount</th> <th>Grand Total</th> <th>purchase date</th></tr>";
		
		for(Bill b:list) {
			str=str+"<tr>";
			str=str+"<td>"+b.getCustomerid()+"</td>";
			str=str+"<td>"+b.getCategoryid()+"</td>";
			str=str+"<td>"+b.getProductid()+"</td>";
			str=str+"<td>"+b.getInvoiceid()+"</td>";
			str=str+"<td>"+b.getPrice()+"</td>";
			str=str+"<td>"+b.getGst()+"</td>";
			str= str+"<td>"+b.getBasicamount()+"</td>";
			str= str+"<td>"+b.getGrandtotal()+"</td>";
			str=str+"<td>"+b.getPurchasedate()+"</td>";
			str=str+"</tr>";
		}
		return str;
	}
	
	@RequestMapping("/searchBill")
	@ResponseBody
	public String searchBill(@RequestParam("m") int month, @RequestParam("y") int year)
	{
		List<Bill> list = billingservice.searchBill(month, year);
		System.out.println(list);
		String str = "";
		str=str+"<table class='table'> <tr><th>Customer id</th><th>category id</th> <th>Product id</th><th>Invoice id</th> <th>Price</th> <th>GST</th> <th>basic Amount</th> <th>Grand Total</th> <th>purchase date</th></tr>";
		
		for(Bill b: list)
		{
			str=str+"<tr>";
			str=str+"<td>"+b.getCustomerid()+"</td>";
			str=str+"<td>"+b.getCategoryid()+"</td>";
			str=str+"<td>"+b.getProductid()+"</td>";
			str=str+"<td>"+b.getInvoiceid()+"</td>";
			str=str+"<td>"+b.getPrice()+"</td>";
			str=str+"<td>"+b.getGst()+"</td>";
			str = str+"<td>"+b.getBasicamount()+"</td>";
			str = str+"<td>"+b.getGrandtotal()+"</td>";
			str=str+"<td>"+b.getPurchasedate()+"</td>";
			str=str+"</tr>";
		}
		return str;
	}
	
	
}