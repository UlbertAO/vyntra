<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<%@ taglib uri = "http://www.springframework.org/tags" prefix = "spring" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display&family=Vollkorn&display=swap" rel="stylesheet"> 
<title>Welcome to Vyntra</title>

<style>
html {
  scroll-behavior: smooth;
}
body{
width:100%;
background:linear-gradient(to right, rgb(41, 128, 185), rgb(109, 213, 250), rgb(255, 255, 255));
font-family: 'Vollkorn', serif;
box-sizing:border-box;

}
a{
text-decoration:none;

}
.error
{
color:red;
}
</style>
</head>
<body>
<center>

<!-- Navigation -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top text-light" >
  <div class="container text-light">
  <img src="images/vyntra.png" style="height:35px;"></img>
  &nbsp;&nbsp;
    <a class="navbar-brand" href="/vyntra">Vyntra</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive" >
      <ul class="navbar-nav ml-auto" >
        <li class="nav-item active">
          <a class="nav-link" href="/vyntra">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./login">Login</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="./reg">Register</a>
        </li>
         
        </li>
      </ul>
    </div>
  </div>
</nav>


    <br><br><br>
<h2>VYNTRA</h2>
<hr style="width:15%;">
<h4>
A great platform to buy items recognized by Virtusa.
</h4>
<br>

<form style="background:linear-gradient(to right, rgb(173, 169, 150), rgb(242, 242, 242), rgb(219, 219, 219), rgb(234, 234, 234)); width:40%; height:auto;"action="reg" method="post">
<fieldset>
	  <p >  ${msg}  </p>
<br><br><br><br>

<div class="form-row">  
    <span class="form-group col-md-6">
      <label for="user">FirstName</label>
    </span>
    <span class="form-group col-md-5">
      <input type="text" class="form-control" id="user" name="firstname" required>
    </span>
    
    <span class="form-group col-md-1">
    </span>
  </div>
  
  
  <div class="form-row">
    <span class="form-group col-md-6">
      <label for="user">LastName</label>
    </span>
    <span class="form-group col-md-5">
      <input type="text" class="form-control" id="user" name="lastname" required>
    </span>
    
    <span class="form-group col-md-1">
    </span>
  </div>
  
  <div class="form-row">
  <span class="form-group col-md-2">
  
  </span>
  
  <span class="form-group col-md-2">
  Gender
  </span>
    <span class="form-group col-md-7">
    
      &nbsp;Male&nbsp;<input type="radio" name="gender" value="M" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       Female&nbsp;<input type="radio" name="gender" value="F">
    </span>
     <span class="form-group col-md-1">
  </span>
  </div>
  
  <div class="form-row">
  <span class="form-group col-md-2">
  
  </span>
  
  <span class="form-group col-md-2">
  DateOfBirth
  </span>
    <span class="form-group col-md-7">
    
      <input type="date" id="start" name="dob"
       value="2000-01-01"
       min="2000-01-01" max="2020-01-01"  required>
    </span>
     <span class="form-group col-md-1">
  </span>
  </div>
  
  
  <div class="form-row">
    <span class="form-group col-md-6">
      <label for="user">Username</label>
    </span>
    <span class="form-group col-md-5">
      <input type="text" class="form-control" id="user" name="username" required>
    </span>
    
    <span class="form-group col-md-1">
    </span>
  </div>
  <div class="form-row">
    <span class="form-group col-md-6">
    <label for="password">Password</label>
    </span>
  
    <span class="form-group col-md-5">
      <input type="password" class="form-control" id="password" name="password" required>
    </span>
    <span class="form-group col-md-1">
    </span>
  </div>
  
  <div class="form-row">
    <span class="form-group col-md-6">
      <label for="user">Address</label>
    </span>
    <span class="form-group col-md-5">
      <textarea name="adress" required></textarea>
          </span>
    
    <span class="form-group col-md-1">
    </span>
  </div>
  
  
  
  <div class="form-row">
    <span class="form-group col-md-6">
    <label for="email">Email</label>
    </span>
  
    <span class="form-group col-md-5">
      
     <input type="email" class="form-control" id="email" name="email" required>
    </span>
    <span class="form-group col-md-1">
    </span>
  </div>
  
  
   <div class="form-row">
    <span class="form-group col-md-6">
    <label for="phn">Phone Number</label>
      
    </span>
  
    <span class="form-group col-md-5">
      <input type="text" class="form-control" id="phn" name="phone" required>
    </span>
    <span class="form-group col-md-1">
    </span>
  </div>
  <br><br>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck" required>
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Register</button>
<br><br>
Already have an account? <a href="./login">Login</a>

<br><br><br><br>
</fieldset>
</form>
<br><br>
</center>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>