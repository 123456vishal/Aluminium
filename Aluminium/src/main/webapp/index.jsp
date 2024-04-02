<!DOCTYPE html>
<html>

<head>
<%@include file="header.jsp"%>
    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="detail-box">
                <h1>
                  We Build <br />
                  The Things Architects <br />
                  Dream Up
                </h1>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="detail-box">
                <h1>
                  We Build <br />
                  The Things Architects <br />
                  Dream Up
                </h1>
               
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="detail-box">
                <h1>
                  We Build <br />
                  The Things Architects <br />
                  Dream Up
                </h1>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel_btn-box">
          <a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
            <i class="fa fa-arrow-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
            <i class="fa fa-arrow-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>Welcome to <span>Alumni Management</span></h2>
            </div>
            <p>
              Simply dummy text of the printing and typesetting industry.
              Lorem Ipsum has been the industry's standard dummy text ever
              since the 1500s, when an unknown printer took a galley of type
              and scrambled it to make a type specimen book. It has s
            </p>
            <a href="">
              Read More
            </a>
          </div>
        </div>
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="images/about-img.png" alt="" />
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

  <!-- portfolio section -->

  <section class="portfolio_section ">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Our Engineering Work 
        </h2>
      </div>
      <div class="carousel-wrap ">
        <div class="filter_box">
          <nav class="owl-filter-bar">
            <a href="#" class="item active" data-owl-filter="*">All</a>
            <a href="#" class="item" data-owl-filter=".decorative">DECORATIVE</a>
            <a href="#" class="item" data-owl-filter=".facade">FACADES </a>
            <a href="#" class="item" data-owl-filter=".perforated">PERFORATED
            </a>
            <a href="#" class="item" data-owl-filter=".railing">RAILINGS </a>
          </nav>
        </div>
      </div>
    </div>
    <div class="owl-carousel portfolio_carousel">
      <div class="item decorative">
        <div class="box">
          <div class="img-box">
            <img src="images/p1.jpg" alt="" />
            <div class="btn_overlay">
              <a href="" class="">
                See More
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="item facade">
        <div class="box">
          <div class="img-box">
            <img src="images/p2.jpg" alt="" />
            <div class="btn_overlay">
              <a href="" class="">
                See More
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="item perforated decorative">
        <div class="box">
          <div class="img-box">
            <img src="images/p3.jpg" alt="" />
            <div class="btn_overlay">
              <a href="" class="">
                See More
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="item railing">
        <div class="box">
          <div class="img-box">
            <img src="images/p1.jpg" alt="" />
            <div class="btn_overlay">
              <a href="" class="">
                See More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end portfolio section -->

  
<br><br>
  <%@include file="footer.jsp"%>

</body>

</html>