<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Design and Engineering</title>
    <!-- Include any CSS stylesheets or external libraries here -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 50px;
            color: #007bff;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }

        select {
            margin-top: 5px;
            margin-bottom: 20px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Product Design and Engineering</h1>

    <form action="ProcessDesign.jsp" method="post">
        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="productName" required>

        <label for="productDescription">Product Description:</label>
        <textarea id="productDescription" name="productDescription" rows="4" cols="50" required></textarea>

        <label for="productType">Product Type:</label>
        <select id="productType" name="productType" required>
            <option value="Hardware">Hardware</option>
            <option value="Software">Aluminium Sheet</option>
            <option value="Hardware">Cable</option>
            <option value="Software">Spare Parts</option>
            <option value="Hardware">Aluminium Pipes</option>
            <option value="Software">Aluminium Coil</option>
        </select>

        <input type="submit" value="Submit">
    </form>

    <div style="max-width: 800px; margin: 20px auto; padding: 10px; background-color: #fff; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);">
        <p>This involves the conceptualization, design, and engineering of aluminium structures, components, and systems. Engineers and designers work to optimize designs for strength, weight, durability, and cost-effectiveness.</p>
    </div>
</body>
</html>
