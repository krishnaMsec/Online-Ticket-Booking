<%-- 
    Document   : valid
    Created on : Sep 17, 2017, 10:16:28 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href=".css">
<script>
function checkPass()
{
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    var message = document.getElementById('message');
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    if(pass1.value === pass2.value){
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!";
    }
    else{
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!";
    }
}
</script>
<style>
.heading{
  padding: 3px;
  text-align: center;
border: 1px solid grey;
border-radius: 7px;
  text-shadow: 2px 3px black;
  color:#0ff20f;
  font-family: sans-serif;
  text-shadow: 5px;
  font-size: 28px;
}
select{
  width:32%;
  padding: 12px 20px;
  margin: 8px 0;
  border: 1px solod #ccc;
  border-radius: 4px;
  transition: background-color .25s;
}
select:focus{
  background-color: #6e6f72;
}
fieldset{
  color:#3579e8;
  font-size:20px;
  font-style: oblique;
}
label{
  color: white;
  font-weight: bolder;
font-style: normal;

}
input[type=text]
{
  width:100%;
  padding:12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  transition: background-color .25s;
}
input[type=password]
{
  width:100%;
  padding:12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  transition: background-color .25s;
}
input[type=submit]{
  width:45%;
  padding:20px 5px;
  margin:8px 20px;
  border: 1px solid #ccc;
  border-radius: 6px;
  background-color: #f7a50e;
  color:white;
}
input[type=reset]{
  width:45%;
  padding:20px 5px;
  margin:8px 20px;
  border: 1px solid #ccc;
  border-radius: 6px;
  background-color: #f7a50e;
  color:white;
}
input[type=submit]:hover{
  background-color: #ad7205;
}
input[type=reset]:hover{
  background-color: #ad7205;
}
#checkal{
  margin-left: 34%;
  margin-top: 25px;
}

#check{
  color:white;
  display: inline;
}

 #rad
{
  width:10%;
  color: white;
  display: inline;
  font-style: normal;
}
input[type=text]:focus{
  background-color:#6e6f72;
}

#ext{
  width:92%;
}
#rr
{
  width: 3%;
}

#pre {
margin-left: 15%;
width:65%;
border-radius: 5px;
background-image: url(<%=request.getContextPath()%>/img/colorful-pattern-wallpapers-18.jpg);
padding: 20px;
opacity: 2;
}

#bb{
  background-image: url(<%=request.getContextPath()%>/img/4308557-dc+comics+comics+wolverine+superheroes+marvel+comics+hawkeye+collage+bloop_www.wallpapernono.com_71.jpg);
  position: relative;
}
</style>
</head>
<body id="bb">

<section id="pre">
<h3 class="heading">REGISTRATION FORM</h3>
<form name="regnam" method="POST" action="register">
  <fieldset>
    <legend>Personel Details:</legend>
<label>First Name:</label>
<input type="text" name="fna" placeholder="Enter first name..." required>

<label>Middle Name:</label>
<input type="text" name="mna" placeholder="Enter middle name..."required>

<label>Last Name:</label>
<input type="text" name="fla" placeholder="Enter last name..." required>
<label style="display:block; padding-bottom:12px;">Gender:</label>
<input type="radio" name="gen" value="Male" checked><p id="rad">Male</p>
<input type="radio" name="gen" value="Male" ><p id="rad">Female</p>
<input type="radio" name="gen" value="Male" ><p id="rad">Other</p>
<br/>

<label style="display:block; margin:13px 7px 0 0;">Date of Birth:</label>
<select name="date">
  <option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>
<select name="month">
<option value="jan">jan</option>
<option value="feb">feb</option>
<option value="march">march</option>
<option value="april">april</option>
<option value="may">may</option>
<option value="june">june</option>
<option value="july">july</option>
<option value="aug">aug</option>
<option value="sep">sep</option>
<option value="oct">oct</option>
<option value="nov">nov</option>
<option value="dec">dec</option>
</select>
<select name="year">
<option value="1980">1980</option>
<option value="1981">1981</option>
<option value="1982">1982</option>
<option value="1983">1983</option>
<option value="1984">1984</option>
<option value="1985">1985</option>
<option value="1986">1986</option>
<option value="1987">1987</option>
<option value="1988">1988</option>
<option value="1989">1989</option>
<option value="1990">1990</option>
<option value="1991">1991</option>
<option value="1992">1992</option>
<option value="1993">1993</option>
<option value="1994">1994</option>
<option value="1995">1995</option>
<option value="1996">1996</option>
<option value="1997">1997</option>
<option value="1998">1998</option>
<option value="1999">1999</option>
<option value="2000">2000</option>
<option value="2001">2001</option>
<option value="2002">2002</option>
<option value="2003">2003</option>
<option value="2004">2004</option>
<option value="2005">2005</option>
<option value="2006">2006</option>
<option value="2007">2007</option>
<option value="2008">2008</option>
<option value="2009">2009</option>
<option value="2010">2010</option>
<option value="2011">2011</option>
<option value="2012">2012</option>
<option value="2013">2013</option>
<option value="2014">2014</option>
<option value="2015">2015</option>
<option value="2016">2016</option>
<option value="2017">2017</option>
<option value="2018">2018</option>
<option value="2019">2019</option>
<option value="2020">2020</option>
<option value="2021">2021</option>
<option value="2022">2022</option>
<option value="2023">2023</option>
<option value="2024">2024</option>
<option value="2025">2025</option>
</select>
</fieldset>
<br/>
<br/>
<fieldset>
  <legend>Address Details</legend>
<label>Street Address:</label>
<input type="text" name="stad" placeholder="Enter street adress" required>

<label>City:</label>
<input type="text" name="city" placeholder="Enter city here" required>
<br/>
<label>State:</label>
<input type="text" name="state" placeholder="Enter state here"required>
<label>Postal Code:</label>
<input type="text" name="post" placeholder="Enter postal code here" required>
</fieldset>
<br/>
<br/>
<fieldset>
  <legend>Contact Information</legend>
  <label style="display:block;">Mobile Number:</label>
  <input id="rr" type="text" name="ext" value="+91">
  <input id="ext" type="text" name="mbno" placeholder="Enter mobile number here" required>
  <br/><label>E-Mail Address:</label>
  <input type="text" name="ee" placeholder="Enter email here" required>
</fieldset>
<fieldset>
  <legend>Login Details:</legend>
<label>User Name:</label>
<input type="text" name="usn" placeholder="Enter the user name..." required>

<label>Password:</label>
<input type="password" name="pass" id="pass1" placeholder="Enter the Password here...." required onkeyup="checkPass(); return false;">
<label>Confirm Password:</label>
<input type="password" name="passcon" id="pass2" placeholder="Re-enter the Password..." required onkeyup="checkPass(); return false;"></br>
<span id='message'></span>
</br>
</fieldset>
<input type="submit" value="SUBMIT">
<input type="reset" value="CLEAR">
<div id="checkal">
<input type="checkbox" name="terms" checked ><p id="check">Click if you accept to the <a href="">Terms&condition.</p></a>
</div>
</form>
</section>
</body>
</html>
