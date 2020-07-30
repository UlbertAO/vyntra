<!DOCTYPE html>
<html>
    <head>
        <title>User List</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
        	rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
        	crossorigin="anonymous">
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
	  url="login";
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

    <header id="main-header" class="py-2 bg-primary text-white">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1><i class="fa fa-users"></i> Users</h1>
          </div>
        </div>
      </div>
    </header>
    
     <!-- actions -->

    <section id="action" class="py-4 mb-4 bg-light sticky-top">
      <div class="container" >
        <div class="row  ">
		<div class="col-md-3">
		      <a
		        href="#"
	            class="btn btn-success btn-block"
	            data-toggle="modal"
             	data-target="#addUserModal">
	           <i class="fa fa-plus"></i> Add User
	         </a>
		   </div>
		   
		      
		       <div class="col-md-3">
            <a
              href="#"
              class="btn btn-primary btn-block"
              data-toggle="modal"
              data-target="#updateUserModal"
            >
              <i class="fa fa-plus"></i> Update User Details
            </a>
          </div>
         
		                          
	          <div class="col-md-3">
	            <a
	              href="#"
	              class="btn btn-danger btn-block"
	              data-toggle="modal"
	              data-target="#deleteUserModal"
	            >
	              <i class="fa fa-minus"></i> Delete User
	            </a>
	          </div>
	          </div>
	          <br/>
	          <div class="row">
	          
	          
     <!-- user list dropdown starts -->
            <div class="col-md-3 btn-group pull-right">
                <button class="btn btn-success btn-block dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> User List</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="listAdmins">All Admins</a></li>
                    <li class="divider"></li>
                    <li><a href="listUsers">All Users</a></li>
                    <li class="divider"></li>
                    <li><a href="listAuth">Auth List</a></li>
                </ul>
            </div>
		      <!--ends-->
	               <div class="col-md-3">
	            <a
	              href="#"
	              class="btn btn-danger btn-block"
	              data-toggle="modal"
	              data-target="#updateUserRoleModal"
	            > Update User Role
	            </a>
	          </div>
	          </div>
	          
		          
		   </div>
	     </div>
	    </section>
		    
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
    
    
    
    
	     <!-- update user detail  modal--> 
        <div class="modal fade" id="updateUserModal">
	      <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	          <div class="modal-header bg-primary text-white">
	            <h5 class="modal-title">Update User Details</h5>
	            <button class="close" data-dismiss="modal">
	              <span>&times;</span>
	            </button>
	          </div>
	          <div class="modal-body">
	            <form action="editUser" method="post">
				  
				  <div class="form-group">
				   <label for="inputEmail3" >User Id</label>
				   <input type="number" min="1" max="999" class="form-control" id="inputEmail3" name="uid" placeholder="Enter User Id" required>
				  </div>
				  	  
				<div class="modal-footer">
				      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				      <button type="submit" class="btn btn-primary">Update</button>
				</div>
			</form>    
	          </div>
	          </div>
	        </div>
	      </div>
	      



 <!-- update user role  modal--> 
        <div class="modal fade" id="updateUserRoleModal">
	      <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	          <div class="modal-header bg-danger text-white">
	            <h5 class="modal-title">Update User Role</h5>
	            <button class="close" data-dismiss="modal">
	              <span>&times;</span>
	            </button>
	          </div>
	          <div class="modal-body">
	            <form action="setAuth" method="post">
				  
				  <div class="form-group">
				   <label for="inputEmail3" >Username</label>
				   <input type="text"  class="form-control" id="inputEmail3" name="username" placeholder="Enter UserName" required>
				  </div>
				  
				  
				  
			  <div class="form-group">
			  <label for="inputEmail3" >Role</label><br/>
			      <input type="radio"  name="authgroup" value="ADMIN" required>Admin<br/>
			      <input type="radio" checked name="authgroup" value="USER">User<br/>
			       
			       </div>
				    
				  	  
				<div class="modal-footer">
				      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				      <button type="submit" class="btn btn-danger">Update</button>
				</div>
			</form>    
	          </div>
	          </div>
	        </div>
	      </div>
	      



	      <!--delete user-->
	      
	      <div class="modal fade" id="deleteUserModal">
	      <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	          <div class="modal-header bg-danger text-white">
	            <h5 class="modal-title">Delete Product</h5>
	            <button class="close" data-dismiss="modal">
	              <span>&times;</span>
	            </button>
	          </div>
	          <div class="modal-body">
	            <form action="deleteUser" method="post">
				  <div class="form-group">
				   <label for="inputEmail3" >User Id</label>
				   <input type="number" min="1" max="999" class="form-control" id="inputEmail3" name="uid" placeholder="Enter user Id" required>
				  </div>
				  
				  
					<div class="modal-footer">
					      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					      <button type="submit" class="btn btn-danger">Delete</button>
					</div>
				</form>    
		          </div>
		          </div>
		        </div>
		      </div>

		    
   
   
    <div class="container">
       <div class="panel panel-primary">
		  <div class="panel-heading">
		    <h2>${list}</h2>
		  </div>
		  
			<div class="panel-body">
			<#if list!="Auth List" && list!="Admin List">
            
		    <table class="table table-striped">
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
		       <#list users as user>
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
           		 </#list>
		      </tbody>
		    </table>
		    <#else>
		    <#if list=="Auth List">
		    
		    <table class="table table-striped">
		      <thead>
		        <tr>
		        
		         <th>Username</th>
		         <th>Role</th>
		          
		        </tr>
		      </thead>
		      <tbody>
		       <#list users as user>
                <tr>
                
                	<td>${user.username}</td>
                    
                    <td>${user.authgroup}</td>
                    
                    
                </tr>	
           		 </#list>
		      </tbody>
		    </table>
		    <#else>
		    
		    
		    <table class="table table-striped">
		      <thead>
		        <tr>
		        
		         <th>Username</th>
		        </tr>
		      </thead>
		      <tbody>
		       <#list users as user>
                <tr>
                
                	<td>${user.username}</td>
                    
                    
                    
                </tr>	
           		 </#list>
		      </tbody>
		    </table>
		    </#if>
		    </#if>
		    
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