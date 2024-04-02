<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <% 
        // Invalidate the session to logout the user
        session.invalidate();
    %>
    <h1>You have been successfully logged out.</h1>
    <p>Thank you for using our website. <a href="login.jsp">Click here</a> to login again.</p>
</body>
</html>
