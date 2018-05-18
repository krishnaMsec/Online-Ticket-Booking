<%-- 
    Document   : index
    Created on : Sep 17, 2017, 1:17:59 PM
    Author     : Ghost
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<title>KPMS WELCOME YOU</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link href="<%=request.getContextPath()%>/css/animate.css" rel="stylesheet"/>
	<link href="<%=request.getContextPath()%>/css/waypoints.css" rel="stylesheet"/>
	<script src="<%=request.getContextPath()%>/js/jquery.waypoints.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/waypoints.js" type="text/javascript"></script>

	<script type="text/javascript">
	$(window).scroll(function(){
		if($(this).scrollTop()>950){
			$('.menuk').addClass("sticky");
		}
		else{
			$('.menuk').removeClass("sticky");
		}
	})
	</script>
	<style>
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
button {
    background-color: #eda61a;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
img.avatar {
    width: 40%;
    border-radius: 50%;
}
.container {
    padding: 16px;
}
span.psw {
    float: right;
    padding-top: 16px;
}
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #35ccca;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Buvar count=document.getElementById("counter");
for(var x=0; x<=count; x++){tton (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}
.animate {
    animation: animatezoom 0.6s
}
@keyframes animatezoom {
    from {transform: scale(0)}
    to {transform: scale(1)}
}
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>

<section id="video_container">

	<div class="dropdown">
            <button id="username" onclick="myFunction()" class="dropbtn"><%=session.getAttribute("name")%></button>

  <div id="myDropdown" class="dropdown-content">
    <a href="logout">LogOut</a>

  </div>
</div>
<script>

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
<video preload="auto" autoplay="autoplay" loop src="<%=request.getContextPath()%>/img/asbg.mp4" type="video/mp4"></video>
<div class="header_content_inner">
	<div class="header_content">
		<section class="os-animation" data-os-animation="zoomInDown" data-os-animation-delay="0.3s">
		<img src="<%=request.getContextPath()%>/img/2000px-Monterey_Bay_Aquarium_Logo.png" width="50%" height="50%">
		<h1 data-title="kpms cinemas">kpms cinemas</h1>
			<p>just made it ease</p>
		</section>
		<section class="os-animation" data-os-animation="zoomInDown" data-os-animation-delay="0.3s">
  
		<div class="center">
			<a href="adminlogin.jsp" title="Admin">admin</a>
		</div>
	</section>
		<section class="os-animation" data-os-animation="zoomInDown" data-os-animation-delay="0.3s">
		<div class="center1">
			<a href="#" title="befan" onclick="document.getElementById('id01').style.display='block'">befan</a>
		</div>
	</section>
</div>
</div>
</section>
<div id="id01" class="modal">

    <form class="modal-content animate" action="logch" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="<%=request.getContextPath()%>/img/2000px-Monterey_Bay_Aquarium_Logo.png" width="50%" height="50%" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label><b style="color:#000;">Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label><b style="color:#000;">Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <button type="submit">Login</button>
      <input type="checkbox" checked="checked"> Remember me
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">New User <a href="valid.jsp">Sign Up</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
}
</script>
<nav class="navigation">
	<ul class="menuk">
		<li><a href="#video_container"><span title="HOME   "></span></a></li>
		<li><a href="#myabout"><span title="ABOUT  "></span></a></li>
		<li><a href="cinema.jsp"><span title="MOVIES "></span></a></li>
		<li><a href="cinema.jsp"><span title="THEATRE"></span></a></li>
		<li><a href="#mycontact"><span title="CONTACT"></span></a></li>


	</ul>

</nav>
<section id="myabout">
	<div class="mycontent">
		<h1>ABOUT US </h1>
		<p>The Maker of Memories, Sathyam is Southern India's Iconic Home of Cinema, welcoming everyone to enjoy the ultimate cinematic experience. Sathyam has been a household name in Chennai since 1974 and is the city's favourite destination for people from all walks of life, across a wide age group and user profile. Sathyam strives to be at the forefront of media technology and endeavours to bring new entertainment technology to customers first
		<br/><br/>The Maker of Memories, Sathyam is Southern India's Iconic Home of Cinema, welcoming everyone to enjoy the ultimate cinematic experience. Sathyam has been a household name in Chennai since 1974 and is the city's favourite destination for people from all walks of life, across a wide age group and user profile. Sathyam strives to be at the forefront of media technology and endeavours to bring new entertainment technology to customers first</p>
	</div>
	<div class="myimagebox">
	</div>
</section>
<section id="mycontact">CONTACT US</section>
<section class="flex-container">
  <div class="flex-item item1"><h3>Feedback Form</h3>
<div class="form">
    <form action="add_feedback" method="POST">
    <label for="fname">Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">
		<label for="email">Email</label>
		<input type="text" id="email" name="email" placeholder="Your mail..">
    <label for="fedmes">Feedback</label><br/><br/>
		<textarea id="fedmes" rows="7" cols="107.5" name="feedb" placeholder="Your feedback.." >
</textarea>
<input type="submit" value="Submit">
  </form>
</div></div>
  <div class="flex-item item2"><h3>Message Us</h3>
<div class="form">
    <form action="add_message" method="POST">
		<label for="fname">Name</label>
		<input type="text" id="fname" name="m_name" placeholder="Your name..">
		<label for="email">Email</label>
		<input type="email" id="email" name="m_email" placeholder="Your email..">
		<label for="fedmes">Message</label><br/><br/>
		<textarea id="fedmes" rows="7" cols="107.5" name="m_msg" placeholder="Your message.." >
</textarea>
<input type="submit" value="Send">
  </form>
</div></div>
</section>
<section class="iconhover">
	<ul>
		<li><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
		<li><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
		<li><a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
		<li><a href="https://www.instagram.com/?hl=en" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
		<li><a href="https://in.linkedin.com/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
	</ul>
</section>
<footer>
	<p>Â© 2017 KPMS CINEMAS online ticket booking site.</p>
	<footer>
</body>
</html>
