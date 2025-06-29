package org.mvcproject.controller;

import java.util.List;
import java.util.Map;
import org.mvcproject.model.Category;
import org.mvcproject.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryservice;
	
	@RequestMapping("/new")
	public String  AddProduct(Category category)
	{
		return "newcategory";
	}
	
	@RequestMapping("/savecategory")
	public String AddProduct(Category category, Map map)
	{
		boolean isSuccess = categoryservice.addcategory(category); 
		if (isSuccess) {
			map.put("msg", "Category Saved Successful");
		} else {
			map.put("msg", "Error! Failed to Add Category");
		}
		return "newcategory";
	}

	public List<Category> getAllcategory()
	{
		List<Category> list= categoryservice.getAllcategory();
		return list;

	}
	@RequestMapping(value="/viewcaty", method=RequestMethod.GET)
	public String viewAllCategory(Map map)
	{
		List<Category> list=categoryservice.getAllcategory();

		map.put("categoryList", this.getAllcategory());

		return "viewcategory";
	}
	
	
}
