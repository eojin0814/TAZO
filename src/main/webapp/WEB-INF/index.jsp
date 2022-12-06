<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
.carousel-inner>.carousel-item>div {
   min-width: 50%;
   min-height: 400px;
   background-color: #00B98E;
}
#ex1 {
  background-color : #EFFBF2;
  border-radius: 30px;
}
</style>


<script>
function LocationMatching() {

   if (form.arrival.value == "") {
      alert("arrival");
      form.arrival.focus();
      return false;
   } 
   if (form.depature.value == "") {
      alert("depature");
      form.depature.focus();
      return false;
   }   
   form.submit();
}
const swiper = new Swiper('.swiper', {
     // Optional parameters
     direction: 'vertical',
     loop: true,

     // If we need pagination
     pagination: {
       el: '.swiper-pagination',
     },

     // Navigation arrows
     navigation: {
       nextEl: '.swiper-button-next',
       prevEl: '.swiper-button-prev',
     },

     // And if we need scrollbar
     scrollbar: {
       el: '.swiper-scrollbar',
     },
   });

	
function register(targetUri){	
  window.location.href = targetUri;
}
</script>
    <meta charset="utf-8">
    
    <title>BizConsult - Consulting HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath }/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="index.html" class="navbar-brand p-0">
                    <h1 class="m-0">TAZO</h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <<div class="collapse navbar-collapse" id="navbarCollapse">
               <div class="navbar-nav ms-auto py-0">
                  <a href="index.html" class="nav-item nav-link active">Home</a> <a
                     href="<c:url value='/customer/locationMatching/Info'/>" class="nav-item nav-link">내 카플</a> 
                     <a href="<c:url value='/customer/reservation/Info'/>"
                     class="nav-item nav-link">예약 정보</a>
                  <div class="nav-item dropdown">
                     <a href="#" class="nav-link dropdown-toggle"
                        data-bs-toggle="dropdown">Pages</a>
                     <div class="dropdown-menu m-0">
                        <a href="feature.html" class="dropdown-item">내 채팅</a> <a
                           href="quote.html" class="dropdown-item">마이페이지</a> <a
                           href="team.html" class="dropdown-item">Our Team</a> <a
                           href="testimonial.html" class="dropdown-item">Testimonial</a> <a
                           href="404.html" class="dropdown-item">404 Page</a>
                     </div>
                  </div>

                        <a href="<c:url value='/driver/myBoards'>
						      <c:param name='driverId' value='10'/>
						   </c:url>" class="nav-item nav-link">내 차량</a>
                    </div>
                     <% if (session.getAttribute("userId") == null) {%>
                       <a href=" <c:url value='/customer/login/form'/>" class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5">로그인</a>
                   	 <%} else if (session.getAttribute("userId") != null) {%>
                   	<a href=" <c:url value='/customer/logout'/>" class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5">로그아웃</a>
                   	<%};
                   	%>
                </div>
            </nav>
            
        
            
     <!--    	<div class="container-xxl bg-primary my-6 wow fadeInUp" data-wow-delay="0.1s">
            	<div class="container px-lg-5">
                	<div class="row align-items-center" style="height: 250px;">
                    	<div class="col-12 col-md-6">
                       	 <h3 class="text-white">�대��濡� 媛�源���?</h3>
                        	<small class="text-white">媛�怨��띠�� 異�諛�吏�,紐⑹��吏�瑜� ���댁＜�몄��~</small>
                       	 <div class="parent">
                          	  	<input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="異�諛�吏�" style="height: 55px;">
           						&nbsp;
           						&nbsp;
                           		<input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="紐⑹��吏�" style="height: 55px;">
                           	 	&nbsp;
                            	<a href="" class="btn btn-outline-light rounded-pill border-2 py-2 px-1 animated slideInRight">location</a>
                        	</div>
                    	</div>
                	</div>
            	</div>
        	</div>
       -->
         <form name="form" method="POST" action="<c:url value='/customer/LocationMatching'/>">
            <div class="container-xxl bg-primary page-header">
               <div class="container text-center">
                  <h1 class="text-white animated zoomIn mb-3">어디로 갈까 ?</h1>
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb justify-content-center">
                        <div class="col-md-6 col-lg-3">
                           <input type="text" name="arrival" id="arrival" class="form-control border-0 py-3"
                              placeholder="arrival">
                        </div>

                        <div class="col-md-6 col-lg-3">
                           <input type="text" name="depature" id="depature" class="form-control border-0 py-3"
                              placeholder="depature">
                        </div>

                        <div class="col-md-2">
                           <input type="button" class="btn btn-dark border-0 w-100 py-3" value="Search" onClick="LocationMatching()">
                        </div>
                     </ol>
                  </nav>
               </div>
            </div>
         </form>
      </div>
       


 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
        <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"></script>
        <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"></script>
        <script>
          $('.carousel').carousel({
            interval: 2000 //기본 5초
          })
        </script>
        
        
      <div class="container-xxl py-6 bg-white">
         <div class="container bg-white">
            <h2>타조 추천</h2>
         </div>
         
         <div id='ex1' class="carousel slide" data-bs-ride="carousel" > 
            <div class="carousel-inner">
               <div class="carousel-item active">
                     <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
               </div>
               <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
                <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
                <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
                <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
                <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
            </div> 
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                   <span class="visually-hidden">Previous</span>
                 </button>
                 <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                   <span class="carousel-control-next-icon" aria-hidden="true"></span>
                   <span class="visually-hidden">Next</span>
                 </button>
         </div>
      </div>
        



       


        <!-- Service Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3"><a href="<c:url value='/driver/register/board/form'>
						   </c:url>">차량 등록하기</a></div>
                    <h2 class="mb-5">차량 예약하기</h2>
                </div>
                <div class="row g-4">
                  <c:forEach var="board" items="${boardList}" varStatus="status">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                   
                        <div class="service-item rounded h-100" onClick="register('<c:url value='/reservation/view/init'>
						      <c:param name='boardId' value='${board.boardId}'/>
						   </c:url>')">
                            <div class="d-flex justify-content-between">
                                <div class="service-icon">
                                    <i class="fa fa-user-tie fa-2x"></i>
                                </div>
                                <a class="service-btn" href="<c:url value='/driver/register/board/form' />">
                                    <i class="fa fa-link fa-2x"></i>
                                </a>
                            </div>
                            <div class="p-5">
                                <h5 class="mb-3">${board.departure } -> ${board.arrival } </h5>
                                <span>출발시간 : ${board.departureTime}</span>
                                <p><span>도착시간 : ${board.arrivalTime}</span>
                                <p><span>탐승 가능 인원 수 : ${board.headCount }</span>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                 
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->


        <!-- Features Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">Features</div>
                        <h2 class="mb-4">Why People Choose Us? We Are Trusted & Award Wining Agency</h2>
                        <p>Clita nonumy sanctus nonumy et clita tempor, et sea amet ut et sadipscing rebum amet takimata amet, sed accusam eos eos dolores dolore et. Et ea ea dolor rebum invidunt clita eos. Sea accusam stet stet ipsum, sit ipsum et ipsum kasd</p>
                        <p>Et ea ea dolor rebum invidunt clita eos. Sea accusam stet stet ipsum, sit ipsum et ipsum kasd</p>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="">Read More</a>
                    </div>
                    <div class="col-lg-7">
                        <div class="row g-5">
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-cubes text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Best In Industry</h6>
                                </div>
                                <span>Magna sea eos sit dolor, ipsum amet ipsum lorem diam eos diam dolor</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-percent text-white"></i>
                                    </div>
                                    <h6 class="mb-0">99% Success Rate</h6>
                                </div>
                                <span>Magna sea eos sit dolor, ipsum amet ipsum lorem diam eos diam dolor</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-award text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Award Winning</h6>
                                </div>
                                <span>Magna sea eos sit dolor, ipsum amet ipsum lorem diam eos diam dolor</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.4s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-smile-beam text-white"></i>
                                    </div>
                                    <h6 class="mb-0">100% Happy Client</h6>
                                </div>
                                <span>Magna sea eos sit dolor, ipsum amet ipsum lorem diam eos diam dolor</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.5s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-user-tie text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Professional Advisors</h6>
                                </div>
                                <span>Magna sea eos sit dolor, ipsum amet ipsum lorem diam eos diam dolor</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.6s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-headset text-white"></i>
                                    </div>
                                    <h6 class="mb-0">24/7 Customer Support</h6>
                                </div>
                                <span>Magna sea eos sit dolor, ipsum amet ipsum lorem diam eos diam dolor</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features End -->


        <!-- Client Start -->
        <div class="container-xxl bg-primary my-6 py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="owl-carousel client-carousel">
                    <a href="#"><img class="img-fluid" src="img/logo-1.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-2.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-3.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-4.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-5.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-6.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-7.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-8.png" alt=""></a>
                </div>
            </div>
        </div>
        <!-- Client End -->


        <!-- Testimonial Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">Testimonial</div>
                    <h2 class="mb-5">What Our Clients Say!</h2>
                </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded-circle" src="../img/testimonial-1.jpg">
                            <div class="ps-3">
                                <h6 class="mb-1">Client Name</h6>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded-circle" src="img/testimonial-2.jpg">
                            <div class="ps-3">
                                <h6 class="mb-1">Client Name</h6>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded-circle" src="img/testimonial-3.jpg">
                            <div class="ps-3">
                                <h6 class="mb-1">Client Name</h6>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <i class="fa fa-quote-left fa-2x text-primary mb-3"></i>
                        <p>Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded-circle" src="img/testimonial-4.jpg">
                            <div class="ps-3">
                                <h6 class="mb-1">Client Name</h6>
                                <small>Profession</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->


        <!-- Team Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">Our Team</div>
                    <h2 class="mb-5">Meet Our Team Members</h2>
                </div>
    
                <div class="row g-4">
                 <c:forEach var="board" items="${boardList}" varStatus="status">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item">
                            <h5>Full Name</h5>
                            <p class="mb-4">Designation</p>
                            <img class="img-fluid rounded-circle w-100 mb-4" src="img/team-1.jpg" alt="">
                            <div class="d-flex justify-content-center">
                                <a class="btn btn-square text-primary bg-white m-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square text-primary bg-white m-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square text-primary bg-white m-1" href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Team End -->
        

        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer pt-5 wow fadeIn" data-wow-delay="0.1s" style="margin-top: 6rem;">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-3">
                        <h5 class="text-white mb-4">Get In Touch</h5>
                        <p><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                        <p><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p><i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-instagram"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h5 class="text-white mb-4">Quick Link</h5>
                        <a class="btn btn-link" href="">About Us</a>
                        <a class="btn btn-link" href="<>">나의 차량</a>
                        <a class="btn btn-link" href="">Privacy Policy</a>
                        <a class="btn btn-link" href="">Terms & Condition</a>
                        <a class="btn btn-link" href="">Career</a>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h5 class="text-white mb-4">Popular Link</h5>
                        <a class="btn btn-link" href="">About Us</a>
                        <a class="btn btn-link" href="">Contact Us</a>
                        <a class="btn btn-link" href="">Privacy Policy</a>
                        <a class="btn btn-link" href="">Terms & Condition</a>
                        <a class="btn btn-link" href="">Career</a>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <p>Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulpu</p>
                        <div class="position-relative w-100 mt-3">
                            <input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="Your Email" style="height: 48px;">
                            <button type="button" class="btn shadow-none position-absolute top-0 end-0 mt-1 me-2"><i class="fa fa-paper-plane text-primary fs-4"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved. 
							
							<!--/*** This template is free as long as you keep the footer author��s credit link/attribution link/backlink. If you'd like to use the template without the footer author��s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                            <br>Distributed By: <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Home</a>
                                <a href="">Cookies</a>
                                <a href="">Help</a>
                                <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath }/js/main.js"></script>
</body>

</html>