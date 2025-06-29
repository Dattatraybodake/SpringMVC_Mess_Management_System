package org.mvcproject.controller;



import org.mvcproject.model.LoginModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class DashboardController {

    @Autowired
    private HttpSession session;  // To access the session

    // Administrator Dashboard
    @RequestMapping("/adminDashboard")
    public String showAdminDashboard(HttpServletRequest request, Model model) {
        LoginModel user = (LoginModel) session.getAttribute("loginUser");
        // Ensure only the admin can access this page
        if (user == null || !"admin".equalsIgnoreCase(user.getLogintype())) {
            return "redirect:/login";  // Redirect to login if session is invalid or user is not admin
        }
        model.addAttribute("username", user.getEmail());  // Add user details to the model
        return "adminDashboard";  // Show admin dashboard page
    }

    // Employee Dashboard
    @RequestMapping("/employeeDashboard")
    public String showEmployeeDashboard(HttpServletRequest request, Model model) {
        LoginModel user = (LoginModel) session.getAttribute("loginUser");
        // Ensure only the employee can access this page
        if (user == null || !"employee".equalsIgnoreCase(user.getLogintype())) {
            return "redirect:/login";  // Redirect to login if session is invalid or user is not employee
        }
        model.addAttribute("username", user.getEmail());  // Add user details to the model
        return "employeeDashboard";  // Show employee dashboard page
    }

    // Customer Dashboard
    @RequestMapping("/customerDashboard")
    public String showCustomerDashboard(HttpServletRequest request, Model model) {
        LoginModel user = (LoginModel) session.getAttribute("loginUser");
        // Ensure only the customer can access this page
        if (user == null || !"customer".equalsIgnoreCase(user.getLogintype())) {
            return "redirect:/login";  // Redirect to login if session is invalid or user is not customer
        }
        model.addAttribute("username", user.getEmail());  // Add user details to the model
        return "customerDashboard";  // Show customer dashboard page
    }
}