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
<title>Welcome Admin</title>

<style>
html {
  scroll-behavior: smooth;
}
body{
width:100%;
background-color:#fcefee;
font-family: 'Vollkorn', serif;
box-sizing:border-box;

}
a{
text-decoration:none;
display:inline;

}
</style>

</head>
<body>
<br><br><br>
<center>
<h1>Products List</h1>
<hr style="width:15%";>
</center>
<br><br>

&nbsp;&nbsp;Click here to Add product-->&nbsp;<a class="btn btn-primary" href="./addpro" role="button">Add Product</a>
<br><br>


<table class="table" >
  <thead class="thead-light">
    <tr>
      <th scope="col">PID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Manufacturer Id</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
      
    </tr>
  </thead>
  
  <tbody>
  <c:forEach var="product" items="${l}">
    <tr>
      <th scope="row">${product.pid}</th>
      <td>${product.pname}</td>
      <td>${product.pdesc}</td>
      <td>${product.price}</td>
      <td>${product.manfid}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>