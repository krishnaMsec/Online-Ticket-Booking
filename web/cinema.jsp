<%-- 
    Document   : cinema
    Created on : Sep 17, 2017, 10:19:39 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>CINEMAS</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  .mySlides {display:none}
  .container {
    position: relative;
    width: 100%;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.container:hover .image {
  opacity: 0.67;
}

.container:hover .middle {
  opacity: 1;
}

.text a {
  background-color: #eda61a;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
  text-decoration: none;
}
  </style>
</head>
<body style="background: url(<%=request.getContextPath()%>/img/typography-countries-russia.jpg)">
  <nav class="navigation">
  	<ul class="menuk">
  		<li><a href="index.jsp "><span title="HOME   "></span></a></li>
  		<li><a href="index.jsp #myabout"><span title="ABOUT  "></span></a></li>
  		<li><a href="cinema.jsp"><span title="MOVIES "></span></a></li>
  		<li><a href="cinema.jsp"><span title="THEATRE"></span></a></li>
  		<li><a href="index.jsp #mycontact"><span title="CONTACT"></span></a></li>
  	</ul>
  </nav>
  <section class="w3-content" style="max-width:100%; margin-top: 100px;" >
  <div class="w3-content" style="max-width:800px">
    <div class="container">
  <img class="mySlides image" src="<%=request.getContextPath()%>/img/spider-man-homecoming-wallpapers-high-resolution.jpg" style="width:100%">
  <div class="middle">
    <div class="text">
        <form action="book.jsp">
            <input type="hidden" id="movie1id" name="mov_n" value="" />
            <input value="Book Now" type="submit" onclick="document.getElementById('movie1id').value='Spider Man'">
        </form>
    </div>
  </div>
</div>
<div class="container">
<img class="mySlides image" src="<%=request.getContextPath()%>/img/justice-league-wallpaper-23.jpg" style="width:100%">
<div class="middle">
    
    <div class="text">
        <form action="book.jsp">
            <input type="hidden" id="movieid" name="mov_n" value="" />
            <input value="Book Now" type="submit" onclick="document.getElementById('movieid').value='Justice League'">
        </form>
    </div>
</div>
</div><div class="container">
  <img class="mySlides image" src="<%=request.getContextPath()%>/img/5363008-justice-league-wallpaper-hd.jpg" style="width:100%">
<div class="middle">
    
    <div class="text">
        <form action="book.jsp">
            <input type="hidden" id="movie2id" name="mov_n" value="" />
            <input value="Book Now" type="submit" onclick="document.getElementById('movie2id').value='Marvel Avengers'">
        </form>
    </div>
</div>
</div>
</div>

<div class="w3-center">
  <div class="w3-section">
    <button class="w3-button w3-light-grey" onclick="plusDivs(-1)"><< Prev</button>
    <button class="w3-button w3-light-grey" onclick="plusDivs(1)">Next >></button>
  </div>
  <button class="w3-button demo" onclick="currentDiv(1)">1</button>
  <button class="w3-button demo" onclick="currentDiv(2)">2</button>
  <button class="w3-button demo" onclick="currentDiv(3)">3</button>
</div>

</section>
<section class="iconhover"  style="position: absolute; bottom: 0;">
	<ul>
		<li><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
		<li><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
		<li><a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
		<li><a href="https://www.instagram.com/?hl=en" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
		<li><a href="https://in.linkedin.com/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
	</ul>
</section>
<footer style="position: absolute; bottom: 0;">
  <p>Â© 2017 KPMS CINEMAS online ticket booking site.</p>
  <footer>
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1;}
  if (n < 1) {slideIndex = x.length;}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-red", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-red";
}
</script>
</body>
</html>

