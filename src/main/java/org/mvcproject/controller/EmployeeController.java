package org.mvcproject.controller;

import java.util.List;
import java.util.Map;
import org.mvcproject.model.Employee;
import org.mvcproject.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping(value="/saveemployee",method=RequestMethod.POST)
	public String saveData(Employee employee, Map map) {
		boolean isSuccess = employeeService.AddNewemployee(employee);
		if (isSuccess) {
			map.put("msg", "Employee Saved Successful");
		} else {
			map.put("msg", "Error! Failed to insert Employee");
		}
		return "newemployee";
	}
	
	public List<Employee> getAllemployee()
	{
		List<Employee> list=employeeService.getAllemployee();
		System.out.println("Employee id" +employeeService.getAllemployee()+"\n");
		return list;
	}
	
	@RequestMapping("/viewemployee")
	public String viewAllEmployee(Map map)
	{
		List<Employee> list=employeeService.getAllemployee();
		map.put("emplist", list);
		return "viewemployee";
	}
	
	@RequestMapping("/deleteemp")
	public String deleteEmployee(@RequestParam("employeeid") Integer employeeid, Map map)
	{
		employeeService.deleteEmployee(employeeid);
		List<Employee> list=employeeService.getAllemployee();
		map.put("emplist",list);
		return "viewemployee";
	}
	
	@RequestMapping("/searchemp")
	@ResponseBody
	public String searchNameURL(@RequestParam("n") String employeename) {
		employeeService.searchemployee(employeename);
		List<Employee> list=employeeService.searchemployee(employeename.trim());
		//System.out.println("List In Controller" +list);
		String str="";
		str=str+"<table class='table'> <tr><th>Employee Id</th><th> Employee Name</th><th>Education</th><th>Contact</th><th>Email</th><th>Shop Location</th></tr>";
		for(Employee e:list)
		{
			str=str+"<tr>";
			str=str+"<td>"+e.getEmployeeid()+"</td>";
			str=str+"<td>"+e.getEmployeename()+"</td>";
			str=str+"<td>"+e.getEducation()+"</td>";
			str=str+"<td>"+e.getEmployeecontact()+"</td>";
			str=str+"<td>"+e.getEmail()+"</td>";
			str=str+"<td>"+e.getAddress()+"</td>";
			str=str+"</tr>";
		}
		
		str=str+"<table>";
//		System.out.println("String is "+str);
		return str; 
	}
}