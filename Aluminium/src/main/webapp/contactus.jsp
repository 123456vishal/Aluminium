<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Service</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body class="sub_page">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="header_top">
        <div class="container-fluid header_top_container">
          <a class="navbar-brand " href="index.jsp"> Aluminium <span>engineering</span> </a>
          <div class="contact_nav">
            <a href="">
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              <span>
                Location
              </span>
            </a>
            <a href="">
              <i class="fa fa-phone" aria-hidden="true"></i>
              <span>
                Call : +01 6260853160
              </span>
            </a>
            <a href="">
              <i class="fa fa-envelope" aria-hidden="true"></i>
              <span>
                vishvishal314@gmail.com
              </span>
            </a>
          </div>
          <a href="login.jsp">
              <i class="fa fa-sign-out" aria-hidden="true"></i>
              <span>
                Logout
              </span>
            </a>
        </div>
      </div>
     <form action="ContactusServlet" method="">
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand navbar_brand_mobile" href="index.jsp"> Aluminium<span>Engineering</span> </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav  ">
                <li class="nav-item ">
                  <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="service.jsp">Services</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Product.jsp">Products</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.jsp"> About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contactus.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Registration.jsp">Registration</a>
                </li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- contact section -->
  <section class="contact_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>Get In <span>Touch</span></h2>
        <form action="ContactusServlet">
      </div>
      <div class="row">
        <div class="col-md-6 px-0">
          <div class="form_container">
            <form action="">
              <div class="form-row">
                <div class="form-group col">
                  <input type="text" class="form-control" name="name" placeholder="Your Name" required/>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-lg-6">
                  <input type="text" class="form-control" name="number" placeholder="Phone Number" required/>
                </div>
                
              </div>
              <div class="form-row">
                <div class="form-group col">
                  <input type="email" class="form-control" name="email" placeholder="Email" required/>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col">
                  <input type="text" class="message-box form-control" name="msg" placeholder="Message" required/>
                </div>
              </div>
              <div class="btn_box">
                <button>
                  SEND
                </button>
              </div>
            </form>
          </div>
        </div>
        
    </div>
  </section>
  <!-- end contact section -->

  <%@include file="footer.jsp"%>

</body>

</html>