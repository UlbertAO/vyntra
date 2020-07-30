<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<link rel="icon" 
      type="image/png" 
      href="./images/vyntra.png">
<title>Vyntra</title>
<style>
body{
box-sizing:border-box;
width:100%;
padding:0px;
}

.carousel-item {
  height: 180vh;
  min-height: 350px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
.card{
z-index:100;
position:absolute;

}

</style>
</head>
<body>

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
          <a class="nav-link" href="#">Orders</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="/account">Account</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="/contactus">Contact Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./logout">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('https://source.unsplash.com/LAaSoL0LrYs/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
         
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://source.unsplash.com/bF2vsubyHcQ/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
          
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://source.unsplash.com/szFUQoyvrxM/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
          
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="false"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
  </div>
  <!-- Cards -->
  
  <div class="card" style="width: 18rem; top:100px; left:50px;">
  <img src="./images/men.jpg" class="card-img-top" alt="..." style="height:300px;">
  <div class="card-body">
    <h5 class="card-title">Men's home wear basics</h5>
 
   <center>
    <a href="./men" class="btn btn-primary">View</a>
    </center>
  </div>
</div>
<div class="card ml-4 mr-2" style="width: 18rem; top:100px; left:400px;" >
  <img src="./images/women.jpg" class="card-img-top" alt="..." style="height:300px;">
  <div class="card-body">
    <h5 class="card-title">Women's home wear basics</h5>
 
    <center>
    <a href="./women" class="btn btn-primary">View</a>
    </center>  </div>
</div>
<div class="card ml-4 mr-2" style="width: 18rem; top:100px; left:800px;" >
  <img src="./images/home.jpg" class="card-img-top" alt="..." style="height:300px;">
  <div class="card-body">
    <h5 class="card-title">Top picks for your home</h5>
    <center>
    <a href="./homeapp" class="btn btn-primary">View</a>
    </center>
  </div>
</div>
<div class="card ml-4 mr-2" style="width: 18rem; top:100px; right:20px;">
  <img src="./images/personal.jpg" class="card-img-top" alt="..." style="height:300px;">
  <div class="card-body">
    <h5 class="card-title">Personal safety supplies</h5>
   
    <center>
    <a href="./personal" class="btn btn-primary">View</a>
    </center>
  </div>
</div>

  <div class="card" style="width: 18rem; top:600px; left:50px;" >
  <img src="./images/gym.jpg" class="card-img-top" alt="..." style="height:300px;">
  <div class="card-body">
    <h5 class="card-title">Home gym equip</h5>
    
     <center>
    <a href="./gym" class="btn btn-primary">View</a>
    </center>
  </div>
</div>
<div class="card ml-4 mr-2" style="width: 18rem; top:600px; left:400px;" >
  <img src="./images/kitchen.jpg" class="card-img-top" alt="..." style="height:300px;">
  <div class="card-body">
    <h5 class="card-title">Kitchen & home appliances</h5>
    
     <center>
    <a href="./kitchen" class="btn btn-primary">View</a>
    </center>
  </div>
</div>
<div class="card ml-4 mr-2" style="width: 18rem; top:600px; left:800px;" >
  <img src="./images/indus.jpg" class="card-img-top" alt="..." style="height:300px;">
  <div class="card-body">
    <h5 class="card-title">Industrial & Scientific</h5>
     
     <center>
    <a href="./industry" class="btn btn-primary">View</a>
    </center>
  </div>
</div>
<div class="card ml-4 mr-2" style="width: 18rem; top:600px; right:20px;">
  <img src="./images/mons.jpg" class="card-img-top" alt="..." style="height:300px;">
  <div class="card-body">
    <h5 class="card-title">Monsoon essentials</h5>
   
    <center>
    <a href="./monsoon" class="btn btn-primary">View</a>
    </center>
  </div>
</div>
  <!-- end of cards -->
</header>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>