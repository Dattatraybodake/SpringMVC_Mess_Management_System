package org.mvcproject.controller;
import java.util.Map;
import org.mvcproject.model.LoginModel;
import org.mvcproject.service.CategoryService;
import org.mvcproject.service.ValidateUserservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ValidateController {

	@Autowired
	ValidateUserservice validateService;

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "/dologin", method = RequestMethod.POST)
	public String isValidUser(HttpServletRequest request, LoginModel model, Map<String, Object> map ,Model mod) {
		boolean b = validateService.isValidateUser(model);
		if (b) {
			HttpSession session = request.getSession(true);
			session.setAttribute("loginUser", model);
			// Check the login type and redirect accordingly
            if ("admin".equalsIgnoreCase(model.getLogintype())) {
                return "adminDashboard"; // Redirect to admin dashboard
            } else if ("worker".equalsIgnoreCase(model.getLogintype())) {
                return "employeeDashboard"; // Redirect to employee dashboard
            } else if ("customer".equalsIgnoreCase(model.getLogintype())) {
                return "customerDashboard"; // Redirect to customer dashboard
            } else {
                map.put("msg", "Invalid Login Type! Please Contact Administrator");
                return "login"; // If login type is not recognized, go to login page
            }
		} 
		else
		{
			map.put("msg","Incorrect Credentials! Please Try After Some Time.");
			return "login";
		}
	}
	@RequestMapping("/viewsessiondata")
	public String viewSessionData() {
		return "dashboard";// viewdata.jsp
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
	    HttpSession session = request.getSession(false); // Fetch existing session, if any
	    if (session != null) {
	        session.invalidate(); // Invalidate the session
	    }
	    return "login"; // Redirect to login page
	}
}