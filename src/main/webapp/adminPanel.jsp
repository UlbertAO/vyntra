<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN PANEL</title>

<!-- favicon -->


<link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
<link rel="manifest" href="/site.webmanifest">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- css -->
    <link rel="stylesheet" href="./css/font-awesome.min.css" />
    <link rel="stylesheet" href="./css/bootstrap.css" />
    <link rel="stylesheet" href="/css/style.css"  />
    
</head>
<body>
<script>
function logout() {
  if(confirm("You will be logged out!!!")){
	  url="logout";
  }
  else{
	  url="#"
  }
  document.getElementById("asdf").href=url;
}
</script>

    <nav class="navbar navbar-expand-sm navbar-dark bg-dark p-0">
      <div class="container">
        <img src="images/vyntra.png" style="height:35px;"></img>
  		&nbsp;&nbsp;
        <a href="adminPanel" class="navbar-brand">AdminPanel</a>
        <button
          class="navbar-toggler"
          data-toggle="collapse"
          data-target="#navbarNav"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collaspe navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item px-2">
              <a href="adminPanel" class="nav-link active">Dashboard</a>
            </li>
            <li class="nav-item px-2">
              <a href="products" class="nav-link">Products</a>
            </li>
            <li class="nav-item px-2">
              <a href="listUsers" class="nav-link">Users</a>
            </li>
          </ul>

          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown mr-3">
              <a
                href="#"
                class="nav-link dropdown-toggle"
                data-toggle="dropdown"
              >
                <i class="fa fa-user"></i> Welcome ${username }
              </a>
              <div class="dropdown-menu">
                <a href="#" class="dropdown-item">
                  <i class="fa fa-user-circle"></i> Profile
                </a>
                <a href="#" class="dropdown-item">
                  <i class="fa fa-gear"></i> Setting
                </a>
              </div>
            </li>
            <li class="nav-item">
              <a  class="nav-link" onclick="logout()" id="asdf">
                <i class="fa fa-user-times"></i> Logout
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header id="main-header" class="py-2 bg-primary text-white">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1><i class="fa fa-gear"></i> Dashboard</h1>
          </div>
        </div>
      </div>
    </header>
    
    
     <!-- actions -->

    <section id="action" class="py-4 mb-4 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <a
              href="#"
              class="btn btn-primary btn-block"
              data-toggle="modal"
              data-target="#addProductModal"
            >
              <i class="fa fa-cart-plus"></i> Add Product
            </a>
          </div>
       
          <div class="col-md-3">
            <a
              href="#"
              class="btn btn-success btn-block"
              data-toggle="modal"
              data-target="#addUserModal"
            >
              <i class="fa fa-user-plus"></i> Add User
            </a>
          </div>
        </div>
      </div>
    </section>
    
    
    
    <section class="posts">
      <div class="container">
        <div class="row">
		    <div class="col-md-6">
		            <div class="card text-center bg-primary text-white mb-3">
		              <div class="card-body">
		                <h3>Products</h3>
		                <h1 class="display-4"><i class="fa fa-shopping-cart"></i> ${totalNoOfProducts }</h1>
		                <a href="products" class="btn btn-outline-light btn-sm">View</a>
		              </div>
		            </div>
		            
		            <div class="card text-center bg-success text-white mb-3">
		                <div class="card-body">
		                  <h3>Users</h3>
		                  <h1 class="display-4"><i class="fa fa-users"></i> ${totalNoOfUsers }</h1>
		                  <a href="listUsers" class="btn btn-outline-light btn-sm">View</a>
		                </div>
		            </div> 
		              
		              
		                
		        </div>
		        
		        <!-- Icon Cards-->
            <div class="col-md-6">
            <div class="row">
            <div class="col-md-6">
	              <!--<div class="col-xl-3 col-sm-6 mb-3">-->
	              <div class="card text-white text-center bg-success ">
	                <div class="card-body">
	                  <div class="mr-5"> New Orders!</div>
	                <center><h1 class="display-4"><i class="fa fa-shopping-cart" ></i> 0</h1></center>
	                </div>
	                <a class="card-footer text-white clearfix small z-1" href="#">
	                  <span class="float-left">View Details</span>
	                  <span class="float-right">
	                    <i>></i>
	                  </span>
	                </a>
	              </div>
	              </div>
	            <div class="col-md-6">
	            
	             <!--  <div class="col-xl-3 col-sm-6 mb-3">-->
		              <div class="card text-white text-center bg-primary mb-3 ">
		                <div class="card-body">
		                  <div class="mr-5"> New Messages!</div>
		                
		                <center><h1 class="display-4"><i class="fa fa-envelope" ></i> 0</h1></center>
		                </div>
		                <a class="card-footer text-white clearfix small z-1" href="#">
		                  <span class="float-left">View Details</span>
		                  <span class="float-right">
		                    <i >></i>
		                  </span>
		                </a>
		              </div>
		           </div>
		          
		         </div>
		         <div class="row">
		         <div class="col-md-12">
		         <div class="card text-center bg-danger text-white mb-3">
		                <div class="card-body">
		                  <h3>Admins</h3>
		                  <h1 class="display-4"><i class="fa fa-user-circle-o"></i> ${totalNoOfAdmins }</h1>
		                  <a href="listAdmins" class="btn btn-outline-light btn-sm">View</a>
		                </div>
		            </div> 
		         
		         </div>
		         
		         
		         </div>
		          
	       </div>
   	 	</div>
   	 	
     <!-- User modal -->

    <div class="modal fade" id="addUserModal">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header bg-success text-white">
            <h5 class="modal-title">Add User</h5>
            <button class="close" data-dismiss="modal">
              <span>&times;</span>
            </button>
          </div>
          <div class="modal-body">            
		 	<form action="reg" method="post">
				<fieldset>
				  <p >  ${msg}  </p>
				<div class="form-group">  
			    <span class="form-group col-md-6">
			      <label for="user">FirstName</label>
			      <input type="text" class="form-control" id="user" name="firstname" required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			      <label for="user">LastName</label>
			      <input type="text" class="form-control" id="user" name="lastname" required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			  <span class="form-group col-md-2">
			  Gender
			  <br>
			      &nbsp;Male&nbsp;<input type="radio" name="gender" value="M" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			       Female&nbsp;<input type="radio" name="gender" value="F">
			    </span>
			  </div>
			  
			  <div class="form-group">
			  <span class="form-group col-md-2">
			  DateOfBirth 
			      <input type="date" id="start" name="dob"
			       value="2000-01-01"
			       min="2000-01-01" max="2020-01-01" class="form-control" required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			      <label for="user">Username</label>
			      <input type="text" class="form-control" id="user" name="username"  required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			    <label for="password">Password</label>
			      <input type="password" class="form-control" id="password" name="password" required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			      <label for="user">Address</label>
			     
			      <textarea name="adress" rows="4" cols="50" class="form-control"required></textarea>
			          </span>
			  </div>
			  
			
				<div class="form-group">
			    <span class="form-group col-md-6">
			    <label for="email">Email</label>
			    </span>
			  
			    <span class="form-group col-md-5">
			      
			     <input type="email" class="form-control" id="email" name="email" required>
			    </span>
			    <span class="form-group col-md-1">
			    </span>
			  </div>
			  
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			    <label for="phn">Phone Number</label>
			    </span>
			    <span class="form-group col-md-5">
			      <input type="text" class="form-control" id="phn" name="phone" required>
			    </span>
			    <span class="form-group col-md-1">
			    </span>
			  </div>
			  
			  
			    <div class="modal-footer">
			    <div class="form-check">
			      <input class="form-check-input" type="checkbox" id="gridCheck" required>
			      <label class="form-check-label" for="gridCheck">
			        Check me out
			      </label>
			    </div>
			  </div>
			  <div class="modal-footer">
			  <botton class="btn btn-secondary" data-dismiss="modal">Close</botton>
			  <button type="submit" class="btn btn-success">Add</button>
				</div>
			</fieldset>
			</form>
			
        </div>
      </div>
    </div>
    </div>
    
    
    
	        <div class="modal fade" id="addProductModal">
	      <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	          <div class="modal-header bg-primary text-white">
	            <h5 class="modal-title">Add Products</h5>
	            <button class="close" data-dismiss="modal">
	              <span>&times;</span>
	            </button>
	          </div>
	          <div class="modal-body">
	            <form action="addpro" method="post">
				  <div class="form-group">
				   <label for="inputEmail3" >Product Name</label>
				   <input type="text" class="form-control" id="inputEmail3" name="pname" placeholder="Enter Product name" required>
				  </div>
				  
				  <div class="form-group">
				    <label for="inputPassword3">Product Description</label>
				    <input type="text" class="form-control" id="inputPassword3" name="pdesc" placeholder="Enter Description" required>
				  </div>
				  
				  <div class="form-group">
				    <label for="inputPassword3">Product Price</label>
				      <input type="text" class="form-control" id="inputPassword3" name="price" placeholder="Enter Product price" required >
				  </div>
				  
				  <div class="form-group">
				    <label for="inputPassword3">Product Manfactured Date</label>
				   		<input type="date" id="start" name="pdate"
				       value="2018-07-22"
				       min="2018-01-01" max="2018-12-31" class="form-control"  required>
				  </div>
				
				  <div class="form-group">
				    <label for="inputPassword3" >Product Manfactured Id</label>
				      <input type="text" class="form-control" id="inputPassword3" name="manfid" placeholder="Enter Manfactured Id" required>
				  </div>
				  
				<div class="modal-footer">
				      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				      <button type="submit" class="btn btn-primary">Add</button>
				</div>
			</form>    
	          </div>
	          </div>
	        </div>
	      </div>
	   
	    
		
	<script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>
	    <script>
      CKEDITOR.replace("editor1");
    </script>
    
</body>
</html>