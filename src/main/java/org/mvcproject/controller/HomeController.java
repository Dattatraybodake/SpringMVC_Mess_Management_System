package org.mvcproject.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("home");
	}
	@RequestMapping(value="/home")
	public String home()
	{
		return "home";
	}
	
	@RequestMapping(value="/error")
	public String error()
	{
		return "error";
	}
	
	@RequestMapping(value="/reg")
	public String register()
	{
		return "register";
	}

	@RequestMapping(value="/log")
	public String login()
	{
		return "login";
	}
	
	@RequestMapping(value="/about")
	public String about()
	{
		return "about";
	}
	
	@RequestMapping(value="/menu")
	public String menus()
	{
		return "menus";
	}
	
	@RequestMapping(value="/contact")
	public String contact()
	{
		return "contact";
	}
	
	@RequestMapping("/customer")
	public String customer(){
		return "newcustomer";
	}
	
	@RequestMapping("/category")
	public String category()
	{
		return "newcategory";
	}
	
	
	@RequestMapping("/employeedashboard")
	public String employeedashboard()
	{
		return "employeeDashboard";
	}
	
	@RequestMapping("admindashboard")
	public String admindashboard()
	{
		return "adminDashboard";
	}
	
	@RequestMapping("employee")
	public String employee()
	{
		return "newemployee";
	}
	
	@RequestMapping(value="/tifin")
	public String tiffin()
	{
		return "tiffin";
	}
	
	@RequestMapping(value="/joinus")
	public String booktable()
	{
		return "booktable";
	}
	
	@RequestMapping(value="/searchbydate")
	public String searchbydate()
	{
		return "searchbydate";
	}
	
	@RequestMapping(value="/reports")
	public String reports()
	{
		return "reports";
	}
	
	@RequestMapping(value="/searchbymonth")
	public String searchbymonth()
	{
		return "searchbymonth";
	}
}