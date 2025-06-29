package org.mvcproject.controller;

import java.util.List;
import java.util.Map;

import org.mvcproject.model.Category;
import org.mvcproject.model.Product;
import org.mvcproject.service.CategoryService;
import org.mvcproject.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/addProduct")
	public String newProduct(Model model)
	{
		List<Category> list = categoryService.getAllcategory();
		model.addAttribute("c", list);	
		System.out.println(list);
		return "newproduct";
	}
	
	@RequestMapping(value = "/saveproduct", method = RequestMethod.POST)
    public String saveProduct(@RequestParam("catid") int categoryid,  // Capture the categoryid
                              @RequestParam("productname") String productname,  // Capture the product name
                              Model model) {

        // Create a new Product object and set the values
        Product product = new Product();
        product.setProductname(productname);
        product.setCategoryid(categoryid); 
        boolean isSaved = productService.addproducts(product);

        if (isSaved) {
            model.addAttribute("msg", "Product added successfully!");
        } else {
            model.addAttribute("msg", "Failed to add product!");
        }
        // Return the view
        return "newproduct";  
    }

	public List<Product> getAllproduct()
	{
		List <Product> list = productService.getAllproduct();
		
		return list;
	}
	
	@RequestMapping(value="/viewproduct", method=RequestMethod.GET)
	public String viewAllProducts(Map map)
	{	
		List<Product> list=productService.getAllproduct();
		map.put("product", this.getAllproduct());
		return "viewproduct";
	}
	
	@RequestMapping(value="/searchproduct", method=RequestMethod.GET)
	public String searchProduct(@RequestParam("n") String productname)
	{
		List<Product> list = productService.searchproduct(productname.trim());
		System.out.println(productname);
		System.out.println(list);
		String str= "";
		str=str+"<table class='table'> <tr><th>Product id</th><th>Product Name</th><th>Product Price</th></tr>";
		
		for(Product p:list)
		{
			str=str+"<tr>";
			str=str+"<td>"+p.getProductid()+"</td>";
			str=str+"<td>"+p.getProductname()+"</td>";
			str=str+"<td>"+p.getProductprice()+"</td>";
			str=str+"</tr>";
		}
		str = str+"<table>";
		return str;
	}
	
	@RequestMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("productid") Integer productid, Map map)
	{
		productService.deleteProduct(productid);
		List<Product> list= productService.getAllproduct();
		map.put("product", list);
		return "viewproduct";
	}
}
