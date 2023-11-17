<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page isErrorPage="true" %>
<%@ page import="java.util.Base64" %>

        <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<style>/* Add these CSS styles to your stylesheet or in a <style> tag in your HTML */
/* Add these CSS styles to your stylesheet or in a <style> tag in your HTML */

/* Reduce the width of input boxes */
.form-control {
  width: 100%; /* Change the width to control the overall width */
  padding: 10px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
}

/* Style the labels to make them more visible */
label {
  font-weight: bold;
  margin-top: 10px;
  display: block;
}

/* Style the textarea to be less wide and have a fixed height */
textarea.form-control {
  width: 100%;
  height: 90px; /* Adjust the height as needed */
  resize: none;
}

/* Style the submit button */
button {
  background-color: #333;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
}

button:hover {
  background-color: #555;
}


</style>
  <title>FishCity Rozafa</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}img/logo.png" rel="icon">
  <link href="${pageContext.request.contextPath}img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}vendor/aos/aos.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Yummy
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="/" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
         <img src="${pageContext.request.contextPath}img/logo.png" alt="">
        <h1>FishCity<span>.</span></h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="#hero">Faqja Kryesore</a></li>
          <li><a href="#about">Rreth</a></li>
          <li><a href="#menu">Menu</a></li>
          <li><a href="#events">Evente</a></li>
          <li><a href="#chefs">Chefs</a></li>
          <li><a href="#gallery">Galeria</a></li>


          <li><a href="#contact">Kontakt</a></li>
          <li><a href="/login">Admin</a></li>
        </ul>
      </nav><!-- .navbar -->

      <a class="btn-book-a-table" href="#book-a-table">Rezervo nje Tavoline</a>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center section-bg">
    <div class="container">
      <div class="row justify-content-between gy-5">
        <div class="col-lg-5 order-2 order-lg-1 d-flex flex-column justify-content-center align-items-center align-items-lg-start text-center text-lg-start">
          <h2 data-aos="fade-up">Shijoni <br>Ushqimin E Shijshem</h2>
          <p data-aos="fade-up" data-aos-delay="100">                Shkoni në restorantin tonë komod dhe miqësor për fëmijët, ku ne ofrojmë një menu të shijshme që përfshin ëmbëlsirë. Ne gjithashtu ofrojmë një bar. Rezervimet pranohen, prandaj mos ngurroni të rezervoni paraprakisht. Ofrohet parkim i aksesueshëm për karriget me rrota. Mezi presim t'ju mirëpresim!              </p>
          </p>
          <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
            <a href="#book-a-table" class="btn-book-a-table">Rezervo nje Tavoline</a>
            <a href="https://www.youtube.com/watch?v=fJgvwC5oaCk&ab_channel=RozafaFishCity" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>FishCity Maliq</span></a>
          </div>
        </div>
        <div class="col-lg-5 order-1 order-lg-2 text-center text-lg-start">
          <img src="${pageContext.request.contextPath}img/peshku-modified.png" class="img-fluid" alt="" data-aos="zoom-out" data-aos-delay="300">
        </div>
      </div>
    </div>
  </section><!-- End Hero Section -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Rreth Nesh</h2>
          <p>Meso Me Shume <span>Rreth Nesh</span></p>
        </div>

        <div class="row gy-4">
          <div class="col-lg-7 position-relative about-img" style="background-image: url(${pageContext.request.contextPath}/img/rozafa.png) ;" data-aos="fade-up" data-aos-delay="150">
            <div class="call-us position-absolute">
              <h4>Rezervo nje tavoline</h4>
              <p>+355 69 666 8888</p>
            </div>
          </div>
          <div class="col-lg-5 d-flex align-items-end" data-aos="fade-up" data-aos-delay="300">
            <div class="content ps-0 ps-lg-5">
              <p class="fst-italic">
                Pas Fish City në Labinot-Fushë, Elbasan, fabrikës në Përrenjas dhe asaj në Gramsh, një tjetër Fish City edhe në Maliq, Korçë. Gjithçka e standardeve bashkëkohore është përmbushur në këtë sipërmarrje, janë punësuar qindra banorë të zonave përreth dhe instaluar një kapacitet modern shërbimi gastronomik.   </p>



              <p>              Fish City në Maliq është tashmë një piketë e rëndësishme e industrisë së përpunimit të peshkut, një referencë e konfirmuar tashmë për një nga restorantet e sushit. Por jo vetëm kaq, Fish City në Maliq është një etalon zhvillimi, një shembull unik i krijimit të sipërmarrjes mbi besimin dhe vendosmërinë, duke guxuar dhe marrë rrisqe.
              </p>

              <div class="position-relative mt-4">
                <img src="${pageContext.request.contextPath}img/Screenshot 2023-11-04 163740.png" class="img-fluid" alt="">

              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->



    <!-- ======= Stats Counter Section ======= -->
    <section id="stats-counter" class="stats-counter">
      <div class="container" data-aos="zoom-out">

        <div class="row gy-4">

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
              <p>Klientet</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="100" data-purecounter-duration="1" class="purecounter"></span>
              <p>Pjatat</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="50" data-purecounter-duration="1" class="purecounter"></span>
              <p>Sherbimi</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="60" data-purecounter-duration="1" class="purecounter"></span>
              <p>Punetoret</p>
            </div>
          </div><!-- End Stats Item -->

        </div>

      </div>
    </section><!-- End Stats Counter Section -->

    <!-- ======= Menu Section ======= -->
    <section id="menu" class="menu">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Menuja Jone</h2>

          <p>Shihni <span>Menune Tone</span></p>
        </div>

        <ul class="nav nav-tabs d-flex justify-content-center" data-aos="fade-up" data-aos-delay="200">
          <li class="nav-item">
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/filterIndex?type=sushi#menu"><h4>Sushi</h4></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/filterIndex?type=peshk#menu"><h4>Peshk</h4></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/filterIndex?type=pica#menu"><h4>Pica</h4></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/filterIndex?type=frutaDeti#menu"><h4>Fruta Deti</h4></a>
          </li>
        </ul>



        <div class="tab-content" data-aos="fade-up" data-aos-delay="300">

          <div class="tab-pane fade active show" id="menu-starters">

            <div class="tab-header text-center">
              <p>Menu</p>



            </div>

            <div class="row gy-5">


              <c:forEach var="menu" items="${filteredMenus}">
                <div class="col-lg-4 menu-item" style="display: inline-block;">
                  <a href="https://source.unsplash.com/800x400/?seafood" class="glightbox"><img src="https://source.unsplash.com/800x400/?seafood" class="menu-img img-fluid" alt=""></a>


                  <h4><c:out value="${menu.dish}" /></h4>
                  <p class="ingredients"><c:out value="${menu.ingredients}" /></p>
                  <p class="type"><c:out value="${menu.type}" /></p>
                  <p class="price"><c:out value="${menu.price}" />Lek</p>


                  <div class="menu-starters">
                  </div>
                </div>
              </c:forEach>
              </div>

            </div>
          </div>
        </div>
    </section>

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Testimonials</h2>
          <p>Cfare ata  <span>Thone Rreth Nesh</span></p>
        </div>

        <div class="slides-1 swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="row gy-4 justify-content-center">
                  <div class="col-lg-6">
                    <div class="testimonial-content">
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        It was very nice atmosphere for an august night.The place offers much to see.
                        The seafood was delicious and served in time.
                        Very reasonable prices.
                        I recommend it!💯🙂                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                      <h3>Ajsi</h3>
                      <h4>Kliente</h4>
                      <div class="stars">
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-2 text-center">
                    <img src="${pageContext.request.contextPath}img/testimonials/unnamed (2).png" class="img-fluid testimonial-img" alt="">
                  </div>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="row gy-4 justify-content-center">
                  <div class="col-lg-6">
                    <div class="testimonial-content">
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        It was an absolute dream. This place exceeded my expectations, I was born and raised in Albania coming back and seeing this definitely reminded me why I’m so proud to be Albanian. The hard work that went into building Rozafa the imagination and vision was all there. The food was incredible and the staff was very friendly.                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                      <h3>Johana Nipolli</h3>
                      <h4>Kliente</h4>
                      <div class="stars">
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-2 text-center">
                    <img src="${pageContext.request.contextPath}img/testimonials/unnamed.png" class="img-fluid testimonial-img" alt="">
                  </div>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="row gy-4 justify-content-center">
                  <div class="col-lg-6">
                    <div class="testimonial-content">
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        It is always a pleasure to visit Rozafa. Their unique environment is always welcoming. This year they had a new menu and they nailed it. Strongly recommended!                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                      <h3>Veton Zekolli</h3>
                      <h4>Klient</h4>
                      <div class="stars">
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-2 text-center">
                    <img src="${pageContext.request.contextPath}img/testimonials/unnamed (1).png" class="img-fluid testimonial-img" alt="">
                  </div>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="row gy-4 justify-content-center">
                  <div class="col-lg-6">
                    <div class="testimonial-content">
                      <p>
                        <i class="bi bi-quote quote-icon-left"></i>
                        I love Rozafa, as we live close by in Macedonia and travel often in Albania to the sea, Rozafa is our must stop on the way. The food is over amazing, without a doubt!                        <i class="bi bi-quote quote-icon-right"></i>
                      </p>
                      <h3>Denisa Guarino</h3>
                      <h4>Kliente</h4>
                      <div class="stars">
                        <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-2 text-center">
                    <img src="${pageContext.request.contextPath}img/testimonials/unnamed (3).png" class="img-fluid testimonial-img" alt="">
                  </div>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Events Section ======= -->
    <section id="events" class="events">
      <div class="container-fluid" data-aos="fade-up">

        <div class="section-header">
          <h2>Eventet</h2>
          <p>Ndaj <span>Momentet Tende</span> Ne Restorantin Tone</p>
        </div>

        <div class="slides-3 swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(${pageContext.request.contextPath}img/events-1.jpg)">
              <h3>Festa Te Personalizuara</h3>
              <div class="price align-self-start"></div>
              <p class="description">
Festoni festat, mbremjet dhe eventet e rendesishme ne jeten tuaj ne prani te ushqimit te fresket dhe te shijshem te detit dhe ambientit te vecante.              </p>
            </div><!-- End Event item -->

          <!-- End Event item -->

            <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(${pageContext.request.contextPath}img/events-3.jpg)">
              <h3>Ditelindjet</h3>
              <div class="price align-self-start"></div>
              <p class="description">
Ku me mire se ne restorantin tone mund te festohen ditelindjet? Kaloni diten me te rendesishme te vitit ne restorantin e Rozafes.              </p>
            </div><!-- End Event item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Events Section -->

    <!-- ======= Chefs Section ======= -->
    <section id="chefs" class="chefs section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Chefs</h2>
          <p>Shefat  Tane <span>Profesionale</span></p>
        </div>

        <div class="row gy-4">

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="chef-member">
              <div class="member-img">
                <img src="${pageContext.request.contextPath}img/chefs/chefs-1.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Walter White</h4>
                <span>Master Chef</span>
                <p>Velit aut quia fugit et et. Dolorum ea voluptate vel tempore tenetur ipsa quae aut. Ipsum exercitationem iure minima enim corporis et voluptate.</p>
              </div>
            </div>
          </div><!-- End Chefs Member -->

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="chef-member">
              <div class="member-img">
                <img src="${pageContext.request.contextPath}img/chefs/chefs-2.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Sarah Jhonson</h4>
                <span>Patissier</span>
                <p>Quo esse repellendus quia id. Est eum et accusantium pariatur fugit nihil minima suscipit corporis. Voluptate sed quas reiciendis animi neque sapiente.</p>
              </div>
            </div>
          </div><!-- End Chefs Member -->

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
            <div class="chef-member">
              <div class="member-img">
                <img src="${pageContext.request.contextPath}img/chefs/chefs-3.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>William Anderson</h4>
                <span>Cook</span>
                <p>Vero omnis enim consequatur. Voluptas consectetur unde qui molestiae deserunt. Voluptates enim aut architecto porro aspernatur molestiae modi.</p>
              </div>
            </div>
          </div><!-- End Chefs Member -->

        </div>

      </div>
    </section><!-- End Chefs Section -->

    <!-- ======= Book A Table Section ======= -->
    <section id="book-a-table" class="book-a-table">
      <div class="container" data-aos="fade-up">
        <div class="section-header">
          <h2>Rezervo nje Tavoline</h2>
          <p>Rezervo <span>Qendrimin Tuaj</span> Me Ne</p>
        </div>
        <div class="row g-0">
          <div class="col-lg-4 reservation-img" style="background-image: url(${pageContext.request.contextPath}img/rezervo.png);" data-aos="zoom-out" data-aos-delay="200"></div>
          <div class="col-lg-8 d-flex align-items-center reservation-form-bg">
            <form action="/book-a-table" method="post" role="form" class="p-3 p-md-4">
              <div class="row gy-4">
                <div class="col-lg-6">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Emri Juaj" required>
                </div>
                <div class="col-lg-6">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Email-i Juaj" required>
                </div>
                <div class="col-lg-6">
                  <input type="text" class="form-control" name="phone" id="phone" placeholder="Numri Juaj" required>
                </div>
                <div class="col-lg-6">
                  <input type="text" name="date" class="form-control" id="date" placeholder="Data" required>
                </div>
                <div class="col-lg-6">
                  <input type="text" class="form-control" name="time" id="time" placeholder="Koha" required>
                </div>
                <div class="col-lg-6">
                  <input type="number" class="form-control" name="people" id="people" placeholder="Numri i njerezve" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Mesazh" required></textarea>
              </div>

              <div class="text-center">
                <button type="submit">Rezervo nje Tavoline</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

            <!-- End Reservation Form -->
        </div>

      </div>
    </section><!-- End Book A Table Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Galeria</h2>
          <p>Hidhini nje sy <span>Galerise Sone</span></p>
        </div>

        <div class="gallery-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-01 202130.png"><img src="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-01 202130.png" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-01 202407.png"><img src="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-01 202407.png" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-01 202529.png"><img src="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-01 202529.png" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-01 202543.png"><img src="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-01 202543.png" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-04 163213.png"><img src="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-04 163213.png" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-04 163225.png"><img src="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-04 163225.png" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-04 163700.png"><img src="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-04 163700.png" class="img-fluid" alt=""></a></div>
            <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-04 163652.png"><img src="${pageContext.request.contextPath}img/gallery/Screenshot 2023-11-04 163652.png" class="img-fluid" alt=""></a></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Gallery Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Kontakt</h2>
          <p>Ju duhet ndihme? <span>Na Kontaktoni</span></p>
        </div>

        <div class="mb-3">
          <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.269160307886!2d20.699016!3d40.7110312!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13509f020ef9e1e5%3A0x2a016f8b5d3140c5!2sRozafa%20Fish%20City!5e0!3m2!1sen!2s!4v1699308881981!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"  frameborder="0" allowfullscreen></iframe>
        </div><!-- End Google Maps -->

        <div class="row gy-4">

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="icon bi bi-map flex-shrink-0"></i>
              <div>
                <h3>Adresa Jone</h3>
                <p> Rruga Punetori 13 <br>
                  Maliq - Shqiperi</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item d-flex align-items-center">
              <i class="icon bi bi-envelope flex-shrink-0"></i>
              <div>
                <h3>Email </h3>
                <p>contact@example.com</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="icon bi bi-telephone flex-shrink-0"></i>
              <div>
                <h3>Na telefononi</h3>
                <p>069 666 8888</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="icon bi bi-share flex-shrink-0"></i>
              <div>
                <h3>Oret e Hapura</h3>
                <div><strong>Cdo dite e javes</strong> 24h
                </div>
              </div>
            </div>
          </div><!-- End Info Item -->

        </div>

        <form action="/contact" method="post" role="form"class=".php-email-form p-3 p-md-4" >
          <div class="row">
            <div class="col-xl-6 form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="Emri Juaj" required>
            </div>
            <div class="col-xl-6 form-group">
              <input type="email" class="form-control" name="email" id="email" placeholder="Email-i Juaj" required>
            </div>
          </div>
          <div class="form-group">
            <input type="text" class="form-control" name="subject" id="subject" placeholder="Permbajtja" required>
          </div>
          <div class="form-group">
            <textarea class="form-control" name="message" rows="5" placeholder="Mesazhi" required></textarea>
          </div>

          <div class="text-center"><button type="submit">Dergo Mesazhin</button></div>
        </form><!--End Contact Form -->

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="container">
      <div class="row gy-3">
        <div class="col-lg-3 col-md-6 d-flex">
          <i class="bi bi-geo-alt icon"></i>
          <div>
            <h4>Adresa</h4>
            <p>
              Rruga Punetori 13 <br>
              Maliq - Shqiperi<br>
            </p>
          </div>

        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-telephone icon"></i>
          <div>
            <h4>Rezervime:</h4>
            <p>
              <strong>Telefoni:</strong>
              069 666 8888<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-clock icon"></i>
          <div>
            <h4>Oret e Hapura</h4>
            <p>
              <strong>Cdo dite te javes!</strong>
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Na Ndiqni</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/FISH.CITY.ROZAFA" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/rozafa_fish_city/" class="instagram"><i class="bi bi-instagram"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Yummy</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>

  </footer><!-- End Footer -->
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}vendor/aos/aos.js"></script>
  <script src="${pageContext.request.contextPath}vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${pageContext.request.contextPath}vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="${pageContext.request.contextPath}vendor/swiper/swiper-bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.request.contextPath}js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>

</html>