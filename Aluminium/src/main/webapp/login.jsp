<!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <!-- Bootstrap JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <!-- Custom styles -->
  <style>
    body {
      background-color: #4682B4;
    }

    .login-container {
      margin-top: 50px;
    }
  </style>
</head>
<body style="background-color: aqua">

<div class="container">
  <div class="row justify-content-center login-container">
    <div class="col-md-4">
      <h1 class="text-center">Login Here</h1>
      <form action="LoginServlet" method="post">
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" class="form-control" name="email" required>
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input type="password" class="form-control" name="password" required>
        </div>
        <div class="form-group">
          <label for="role">Select Role:</label>
          <select class="form-control" name="role" required>
            <option value="user">User</option>
            <option value="admin">Admin</option>
          </select>
        </div>
        <div class="form-group form-check">
          <input type="checkbox" class="form-check-input" id="rememberMe">
          <label class="form-check-label" for="rememberMe">Remember me</label>
        </div>
 <%

 String sms = (String)request.getAttribute("sms");
 if(sms!=null)
 {
 out.print(sms);	
 }
 %>
        <button type="submit" class="btn btn-success">Submit</button>
        <div id="message" class="mt-3"></div>
        <div class="form-group mt-3">
          <a href="signup.jsp" class="btn btn-primary">Sign Up</a>
          <a href="forgot.jsp" class="btn btn-link">Forgot Password?</a>
        </div>
    </div>
  </div>
</div>

</form>
</body>
</html>
