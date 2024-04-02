<%@page import="dto.Reg"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.ArrayList"%>
<%@page import="dbs.DBService"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration Details</title>
    <style>
        /* CSS Styles for Table */
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Aluminium Registration Details</h2>
    <table>
        <thead>
            <tr>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Father's Name</th>
                <th>Mother's Name</th>
                <th>Country Code</th>
                <th>Mobile Number</th>
                <th>Email</th>
                <th>Education Year</th>
                <th>Last Passed Class</th>
                <th>Occupation</th>
                <th>Address</th>
                <th>Photo</th>
            </tr>
        </thead>
        <tbody>
            <% 
            DBService db = new DBService();
            ArrayList<Reg> al = db.getReg();
                
            if (al != null) {
                for (Reg user : al) {
            %>
            <tr>
                <td><%= user.getFirstName() %></td>
                <td><%= user.getMiddleName() %></td>
                <td><%= user.getLastName() %></td>
                <td><%= user.getFatherName() %></td>
                <td><%= user.getMotherName() %></td>
                <td><%= user.getCountryCode() %></td>
                <td><%= user.getMobileNumber() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getEducationYear() %></td>
                <td><%= user.getLastPassedClass() %></td>
                <td><%= user.getOccupation() %></td>
                <td><%= user.getAddress() %></td>
                <td><img src="<%= user.getPhoto() %>" alt="User Photo" width="100"></td>
            </tr>
            <% 
                } 
            } 
            %>
        </tbody>
    </table>
</body>
</html>
