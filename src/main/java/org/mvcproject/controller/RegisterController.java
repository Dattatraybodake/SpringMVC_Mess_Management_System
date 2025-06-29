package org.mvcproject.controller;

import java.util.Map;

import org.mvcproject.model.Register;
import org.mvcproject.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
	
	  @Autowired
	    RegisterService regService;
	    @RequestMapping("/save")
	    public String saveData(Register register, Map map) {
	        boolean isSuccess = regService.isAddRegister(register);
	        if (isSuccess) {
	            map.put("msg", "Registration Successful");
	        } else {
	            map.put("msg", "Registration Failed");
	        }
	        return "register";  // Redirect to index.jsp after registration
	    }
	    
	    
}
