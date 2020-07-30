<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false" %>

    
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>ERROR</title>
<style>
img{
width:100%;
height:500px;
}
</style>
</head>
<body>
<center>
 <img src="./images/error.jpeg" alt="error img">
 <p>You have encountered an error.</p>
 
  <h1>${code}</h1>
 
  <h2>  ${msg} </h2>
  

  <a href="/">Return To HomePage</a>
  </center>
</body>
</html>