<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.mvcproject.model.LoginModel"%>
<html>
<head>

    <title>Session Data</title>
    
</head>

<body>
    <% 
        LoginModel model = (LoginModel) session.getAttribute("loginUser");
        if (model != null) {
            String username = model.getEmail();
            String password = model.getPassword();
            String logintype = model.getLogintype();
            out.println("<h1>Session data</h1>");
            out.println("<h2>Username: " + username + "</h2>");
            out.println("<h2>Password: " + password + "</h2>");
            out.println("<h2>Login Type: " + logintype + "</h2>");
        } else {
            out.println("<h1>No session data found!</h1>");
        }
    %>
</body>
</html>
