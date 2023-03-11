<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="M3Proj._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      

   <div class="container-xxl bg-primary hero-header n1">
                <div class="container">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-6 text-center text-lg-start">
                            <h1 class="text-white mb-4 animated zoomIn"> Welcome to Kharina Secondary School  Management System </h1>
                            <p class="text-white pb-3 animated zoomIn">Kharina Secondary School is a traditional high school
                  based in Pietermariztburg, South Africa.
                  Founded in 1930, we are committed to the best practice
                  for students in all aspect of our school.
                  The values we instil in our students guide them on their journey
                  to adulthood and finding their purpose.</p>

                             <a href="About.aspx" class="btn btn-outline-light rounded-pill border-2 py-3 px-5 animated slideInRight">Learn More</a>
                        </div>
                        <div class="col-lg-6 text-center text-lg-start">
                            <img class="img-fluid animated zoomIn" src="img/Webinar-bro.svg" alt="">
                        </div>
                    </div>
                </div>
            </div>
      <!-- Navbar & Hero End -->



    <!-- Pillars -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">Our Foundations</div>
                    <h2 class="mb-5">Main Pillars of the School</h2>
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item rounded h-100">
                            <div class="d-flex justify-content-between">
                                <div class="service-icon">
                                    <i class="fa fa-user-tie fa-2x"></i>
                                </div>
                                <a class="service-btn" href="#">
                                    <i class="fa fa-link fa-2x"></i>
                                </a>
                            </div>
                            <div class="p-5">
                                <h5 class="mb-3">Academic Excellence</h5>
                                <span>Academic achievement is important for the successful development
               of young people in society. 
              </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item rounded h-100">
                            <div class="d-flex justify-content-between">
                                <div class="service-icon">
                                    <i class="fa fa-chart-pie fa-2x"></i>
                                </div>
                                <a class="service-btn" href="#">
                                    <i class="fa fa-link fa-2x"></i>
                                </a>
                            </div>
                            <div class="p-5">
                                <h5 class="mb-3">Sport Achievement</h5>
                                <span>Sport allows learners an opportunity to express themselves
                                and connect with other people</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="service-item rounded h-100">
                            <div class="d-flex justify-content-between">
                                <div class="service-icon">
                                    <i class="fa fa-chart-line fa-2x"></i>
                                </div>
                                <a class="service-btn" href="#">
                                    <i class="fa fa-link fa-2x"></i>
                                </a>
                            </div>
                            <div class="p-5">
                                <h5 class="mb-3">Culture Exploration</h5>
                                <span>Culture can improve students' ability to learn
                by creating a positive environment that builds
                relationships among students and teachers</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item rounded h-100">
                            <div class="d-flex justify-content-between">
                                <div class="service-icon">
                                    <i class="fa fa-chart-area fa-2x"></i>
                                </div>
                                <a class="service-btn" href="#">
                                    <i class="fa fa-link fa-2x"></i>
                                </a>
                            </div>
                            <div class="p-5">
                                <h5 class="mb-3">Financial Literacy</h5>
                                <span>Our school prides itself for teaching the next generation to be financially savy</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item rounded h-100">
                            <div class="d-flex justify-content-between">
                                <div class="service-icon">
                                    <i class="fa fa-balance-scale fa-2x"></i>
                                </div>
                                <a class="service-btn" href="#">
                                    <i class="fa fa-link fa-2x"></i>
                                </a>
                            </div>
                            <div class="p-5">
                                <h5 class="mb-3">Management</h5>
                                <span> School managers shape the teachers development,
                                determine the educational goals of the school</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="service-item rounded h-100">
                            <div class="d-flex justify-content-between">
                                <div class="service-icon">
                                    <i class="fa fa-house-damage fa-2x"></i>
                                </div>
                                <a class="service-btn" href="#">
                                    <i class="fa fa-link fa-2x"></i>
                                </a>
                            </div>
                            <div class="p-5">
                                <h5 class="mb-3">Kindness & Love</h5>
                                <span>Raising leaders who'll be empathetic towards others and always yern to help others</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pillars end -->


     <!-- About Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow zoomIn" data-wow-delay="0.1s">
                        <img class="img-fluid" src="img/Studying-pana.svg">
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">About Us</div>
                        <h2 class="mb-4">Award Wining School in Pietermaritzburg</h2>
                        <p class="mb-4">Kharina Secondary is a public school, a quintile level 5 and a Fee-Paying school.
			The main source of income for the school is through government funding, by charging 
			school fees and doing other reasonable forms of fund-raising. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod</p>
                        <div class="row g-3 mb-4">
                            <div class="col-12 d-flex">
                                <div class="flex-shrink-0 btn-lg-square rounded-circle bg-primary">
                                    <i class="fa fa-user-tie text-white"></i>
                                </div>
                                <div class="ms-4">
                                    <h6>Subjects</h6>
                                    <span>Subject packages that include isiZulu, Tourism, Business Studies, Consumer Studies and 
			                         Computer Applications Technology are proving to be popular </span>
                                </div>
                            </div>
                            <div class="col-12 d-flex">
                                <div class="flex-shrink-0 btn-lg-square rounded-circle bg-primary">
                                    <i class="fa fa-chart-line text-white"></i>
                                </div>
                                <div class="ms-4">
                                    <h6>Our Genesis</h6>
                                    <span>Founded in 1982, Kharina Secondary School is a public secondary school located in Northdale, Pietermaritzburg</span>
                                </div>
                            </div>
                        </div>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="About.aspx">Read More</a>
                    </div>
                </div>
                <div></div>
                                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow zoomIn" data-wow-delay="0.1s">
                        <img class="img-fluid" src="img/Teacher student-amico.svg">
                    </div>
                    <div class="col-lg-6 wow fadeInUp section3" data-wow-delay="0.1s" >
                        <div class="d-inline-block border rounded-pill text-primary px-4 mb-3" style="margin-top:20px" >Our Goals</div>
                        <h2 class="mb-4">Inspiring The Next Generation Of Leaders </h2>
                        <p class="mb-4">Here at Kharina we strive to help every learner reach their own greatest potential. We don&#39;t just measure success in academic merits alone but allow every student the oppurtunity to show us and themselves what they&#39;re really capable of. We offer many extra curricular activities and mental health support services to give students as many experiences in their life.</p>
                        <div class="row g-3 mb-4">
                            <div class="col-12 d-flex">
                                <div class="flex-shrink-0 btn-lg-square rounded-circle bg-primary">
                                    <i class="fa fa-user-tie text-white"></i>
                                </div>
                                <div class="ms-4">
                                    <h6>Sports</h6>
                                    <span>We believe that in order to have a healthy and productive&nbsp; mind one must first achieve a healthy and productive body. Our wide selection of sport which range from <strong>FOOTBALL ,CRICKET,HOCKEY,RUGBY </strong>and<strong> TENNIS.</strong>&nbsp; These give pur learners a path towards socializing amongst their fellow pupils and making unforgettable moments.</span></div>
                            </div>
                            <div class="col-12 d-flex">
                                <div class="flex-shrink-0 btn-lg-square rounded-circle bg-primary">
                                    <i class="fa fa-chart-line text-white"></i>
                                </div>
                                <div class="ms-4">
                                    <h6>Therapy</h6>
                                    The school has a resident mental health assistant to help students from the many pressures of addolescent life. We know that this is a hard time in our students life and we aim to help in every way possible.</div>
                            </div>
                        </div>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="About.aspx">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


      <!-- Testimonial Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">Testimonial</div>
                    <h2 class="mb-5">What The Parents Say!</h2>
                </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Met the most pleasant and polite students. A true reflection of the teachers and members at the institute. An amazing and welcoming visit.</p>
                        <div class="d-flex align-items-center">
                           
                            <div class="ps-3">
                                <h6 class="mb-1">Mthokozisi Nxumalo</h6>
                                <small>Parent</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Great boarding school for boys. Fantastic facilities and grounds</p>
                        <div class="d-flex align-items-center">
                           
                            <div class="ps-3">
                                <h6 class="mb-1">Ihsaan Bhamjee</h6>
                                <small>Parent</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <<p>Brilliant school.The Best in southern hemisphere
                        </p>
                        <div class="d-flex align-items-center">
                           
                            <div class="ps-3">
                                <h6 class="mb-1">Thandolwethu Sithole</h6>
                                <small>Parent</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Awesome staff and a very warm welcoming I senced solidarity between staff and management. Keep it up. Very clean environment.</p>
                        <div class="d-flex align-items-center">
                          
                            <div class="ps-3">
                                <h6 class="mb-1">Telamiso</h6>
                                <small>Parent</small>
                            </div>
                        </div>
                    </div>
                     <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Beautiful place with a lovely atmosphere and very friendly people. Very good academic track record. Wonderful sporting facilties.</p>
                        <div class="d-flex align-items-center">
                           
                            <div class="ps-3">
                                <h6 class="mb-1">Chris</h6>
                                <small>Parent</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->



<style type="text/css">

    .section3{
            margin-top:20vh;
    
    }


</style>
  
</asp:Content>



<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder">
    <link rel="stylesheet" href="CSS/masterstyle.css" />
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <link rel ="stylesheet" href="teacherstyle.css" />
    <style type="text/css">
        .newStyle1 {
            font-family: sans-serif;
            font-size: medium;
            font-weight: lighter;
        }
    </style>
</asp:Content>


