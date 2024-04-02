<%@page import="dto.Contactus"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbs.DBService"%>
<html>
<head>
<title>DISPLAY CONTACTUS</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
    }
    #header {
        text-align: center;
        background-color: #FFA500;
        padding: 15px 0;
    }
    #nav {
        background-color: #000;
        text-align: center;
        padding: 15px 0;
    }
    #nav a {
        color: #fff;
        font-weight: bold;
        font-size: 20px;
    }
    
    .contact-table {
        width: 80%;
        max-width: 800px;
        background-color: #fff;
        border-collapse: collapse;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 20px auto;
    }
    .contact-table th,
    .contact-table td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }
    .contact-table th {
        background-color: #4CAF50;
        color: #fff;
        font-weight: bold;
    }
    .back-link {
        display: block;
        margin-top: 20px;
        text-align: center;
    }
</style>
</head>
<body>
<div id="header">
    <h1>Display Contact Us</h1>
</div>
<table class="contact-table">
    <thead>
        <tr>
            <th>S.No.</th>
            <th>Name</th>
            <th>Number</th>
            <th>Email</th>
            <th>Message</th>
        </tr>
    </thead>
    <tbody>
    <%
    DBService db = new DBService();
    ArrayList al = db.getContacts();
    
    if(al != null) {
        for(int i = 0; i < al.size(); i++) {
            Contactus c = (Contactus) al.get(i);
    %>
        <tr>
            <td><%= i+1 %></td>
            <td><%= c.getName() %></td>
            <td><%= c.getNumber() %></td>
            <td><%= c.getEmail() %></td>
            <td><%= c.getMsg() %></td>
        </tr>
    <%
        }
    }
    %>
    </tbody>
</table>
<a href="index.jsp" class="back-link">Back to Home Page</a>
<div id="footer">
    
</div>
</body>
</html>
