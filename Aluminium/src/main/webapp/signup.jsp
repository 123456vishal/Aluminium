<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup Page</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <!-- Custom styles -->
  <style>
    body {
      background-color: #f8f9fa;
      text-align: center;
    }

    .signup-container {
      margin-top: 50px;
    }
  </style>
</head>
<body style="background-color: #008B8B">

<div class="container">
  <div class="row justify-content-center signup-container">
    <div class="col-md-6">
      <h1 class="text-center">Signup</h1>
      <form action="SignupServlet" >
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" class="form-control" id="email" name="email" required>
        </div><br>
        <div class="form-group">
          <label for="password">Password:</label>
          <input type="password" class="form-control" id="password" name="password" required>
        </div><br>
        <button type="submit" class="btn btn-success">Signup</button>
        <div id="message" class="mt-3"></div>
      </form>
    </div>
  </div>
</div>
<%

String sms = (String)request.getAttribute("sms");
if(sms!=null)
{
out.print(sms);	
}
%>
<!-- Bootstrap JS and jQuery (required for Bootstrap) -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
