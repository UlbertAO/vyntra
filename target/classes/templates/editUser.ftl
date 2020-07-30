<!DOCTYPE html>
<html>
    <head>
        <title>Product List</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        	rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
        	crossorigin="anonymous">
        </head>
        
        

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
    
  
    <body>
    
    
    
    <script>
function logout() {
  if(confirm("You will be logged out!!!")){
	  url="login";
  }
  else{
	  url="#"
  }
  document.getElementById("asdf").href=url;
}


var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'Password matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'Password not matching';
  }
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
                <i class="fa fa-user"></i> Welcome ${username} 
              </a>
              <div class="dropdown-menu">
                <a href="profile.html" class="dropdown-item">
                  <i class="fa fa-user-circle"></i> Profile
                </a>
                <a href="setting.html" class="dropdown-item">
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

    <header id="main-header" class="py-2 bg-success text-white">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1><i class="fa fa-user"></i> User</h1>
          </div>
        </div>
      </div>
    </header>
    
    	      
    <div class="container sticky-top bg-light">
       <div class="panel panel-primary">
		  <div class="panel-heading">
		    <h2>User In List</h2>
		  </div>
		  
				  <div class="panel-body">
            
            
              
            
		    <table class="table table-striped ">
		      <thead>
		        <tr>
		        
		        	
		          
		          <th>Uid</th>
		          
		          <th>User FullName</th>
		          <th>Username</th>
		          <th>Password</th>
		          <th> Gender</th>
		          <th>DOB</th>
		          <th>Email</th>
		          <th>PhoneNumber</th>
		          <th>Address</th>
		          
		        </tr>
		      </thead>
		      <tbody>
		       
                <tr>
                
                    <td>${user.uid}</td>
                    
                    <td>${user.firstname} ${user.lastname}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.gender}</td>
                    <td>${user.dob}</td>
                    <td>${user.email}</td>
                    <td>${user.phone}</td>
                    <td>${user.address}</td>
                    
                    
                </tr>
		      </tbody>
		    </table>
		  </div>
		</div>
		</div>

    
        <div class="container">
       <div class="panel panel-primary">
		  <div class="panel-heading">
		    <h2>Edit User Details</h2>
		  </div>
		  
				  <div class="panel-body">
            
            
            	<form action="reg" method="post">
				<fieldset>
				
				<div class="form-group">
				   <label for="inputEmail3" >User Id</label>
				   <input type="number" readonly value=#{user.uid} min="1" max="999" class="form-control" id="inputEmail3" name="uid" placeholder="Enter User Id" required>
				  </div>
				  
				 
				<div class="form-group">  
			    <span class="form-group col-md-6">
			      <label for="user">FirstName</label>
			      <input type="text" value="${user.firstname}" class="form-control" id="user" name="firstname" required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			      <label for="user">LastName</label>
			      <input type="text" value="${user.lastname}" class="form-control" id="user" name="lastname" required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			  <span class="form-group col-md-2">
			  Gender
			  <br>
			  <#if user.gender=='M'>
			      &nbsp;Male&nbsp;<input type="radio" checked name="gender" value="M" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			       Female&nbsp;<input type="radio" name="gender" value="F">
			   <#elseif user.gender=='F'>
			   &nbsp;Male&nbsp;<input type="radio"  name="gender" value="M" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			       Female&nbsp;<input type="radio" checked name="gender" value="F">
			   <#else>
			   
			      &nbsp;Male&nbsp;<input type="radio"  name="gender" value="M" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			       Female&nbsp;<input type="radio" name="gender" value="F">
			   </#if>
			     </span>
			  </div>
			  
			  <div class="form-group">
			  <span class="form-group col-md-2">
			  DateOfBirth 
			      <input type="date" value="${user.dob}" id="start" name="dob"
			       value="2000-01-01"
			       min="2000-01-01" max="2020-01-01" class="form-control" required>
			    </span>
			  </div>
			  
			  
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			      <label for="user">Address</label>
			     
			      <textarea name="adress"  rows="4" cols="50" class="form-control"required>${user.address}</textarea>
			          </span>
			  </div>
			  
			
				<div class="form-group">
			    <span class="form-group col-md-6">
			    <label for="email">Email</label>
			    </span>
			  
			    <span class="form-group col-md-5">
			      
			     <input type="email" value="${user.email}" class="form-control" id="email" name="email" required>
			    </span>
			    <span class="form-group col-md-1">
			    </span>
			  </div>
			  
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			    <label for="phn">Phone Number</label>
			    </span>
			    <span class="form-group col-md-5">
			      <input type="text" value="${user.phone}"class="form-control" id="phn" name="phone" required>
			    </span>
			    <span class="form-group col-md-1">
			    </span>
			  </div>
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			      <label for="user">Username</label>
			      <input type="text" readonly value="${user.username}"class="form-control" id="user" name="username"  required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			    <label for="password">Password</label>
			      <input type="password" class="form-control" id="password" name="password" onkeyup='check();'  required>
			    </span>
			  </div>
			  
			  <div class="form-group">
			    <span class="form-group col-md-6">
			  
			      <label for="password">Confirm Password</label>
			      <input type="password" class="form-control" id="confirm_password" name="confirm_password" onkeyup='check();' required>
			       <span id='message'></span>
			    </span>
			  
			  </div>
			  
			  
			  
			  <div class="modal-footer">
			  <a href="listUsers" ><botton class="btn btn-secondary" data-dismiss="modal">Close</botton></a>
			  <button type="submit" class="btn btn-success">Update</button>
				</div>
			</fieldset>
			</form>
            			
            						
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