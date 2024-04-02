<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            background-color: #e6f7ff;
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
            font-weight: bold;
        }

        h2 {
            color: orange;
        }
    </style>
</head>
<body>
    <h2>Thank you for giving your details!</h2>
    <p>
        We will contact you soon.
    </p>
   <form action="contactdisplay.jsp">
        <input type="submit" value="Display">
    </form>
</body>
</html>
