<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Now</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #007bff;
        }

        .payment-methods {
            margin: 20px auto;
        }

        .select-payment-method {
            padding: 10px;
            font-size: 16px;
            width: 100%;
            max-width: 300px;
        }

        .submit-btn {
            margin-top: 20px;
        }

        .btn-proceed {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-proceed:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Options</h1>
        <p>Select your preferred payment method:</p>
        <div class="payment-methods">
            <select name="paymentMethod" id="paymentMethod" class="select-payment-method">
                <option value="credit_card">Credit Card</option>
                <option value="paypal">PayPal</option>
                <option value="bhim_upi">Bhim UPI</option>
                <option value="google_pay">Google Pay</option>
                <option value="apple_pay">Apple Pay</option>
                <!-- Add more payment options here -->
            </select>
        </div>
        <div class="submit-btn">
            <button type="submit" class="btn-proceed">Proceed to Payment</button>
        </div>
    </div>
</body>
</html>
