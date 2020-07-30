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

    <header id="main-header" class="py-2 bg-success text-white">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1><i class="fa fa-shopping-cart"></i> Products</h1>
          </div>
        </div>
      </div>
    </header>
    
     <!-- actions -->

    <section id="action" class="py-4 mb-4 sticky-top bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <a
              href="#"
              class="btn btn-primary btn-block"
              data-toggle="modal"
              data-target="#addProductModal"
            >
              <i class="fa fa-plus"></i> Add Product
            </a>
          </div>

          <div class="col-md-3">
            <a
              href="#"
              class="btn btn-primary btn-block"
              data-toggle="modal"
              data-target="#updateProductModal"
            >
              <i class="fa fa-plus"></i> Update Product Details
            </a>
          </div>
                              
          <div class="col-md-3">
            <a
              href="#"
              class="btn btn-danger btn-block"
              data-toggle="modal"
              data-target="#deleteProductModal"
            >
              <i class="fa fa-minus"></i> Delete Product
            </a>
          </div>
        </div>
      </div>
    </section>
    

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
				      <input type="number" min="1" max="99999" class="form-control" id="inputPassword3" name="price" placeholder="Enter Product price" required >
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
	      
	      
	     <!-- update modal--> 
        <div class="modal fade" id="updateProductModal">
	      <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	          <div class="modal-header bg-primary text-white">
	            <h5 class="modal-title">Upadte Products</h5>
	            <button class="close" data-dismiss="modal">
	              <span>&times;</span>
	            </button>
	          </div>
	          <div class="modal-body">
	            <form action="editPro" method="post">
				  
				  <div class="form-group">
				   <label for="inputEmail3" >Product Id</label>
				   <input type="number" min="1" max="999" class="form-control" id="inputEmail3" name="pid" placeholder="Enter Product Id" required>
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
	      
	      
	      
	      <!--delete product-->
	      
	      <div class="modal fade" id="deleteProductModal">
	      <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	          <div class="modal-header bg-danger text-white">
	            <h5 class="modal-title">Delete Product</h5>
	            <button class="close" data-dismiss="modal">
	              <span>&times;</span>
	            </button>
	          </div>
	          <div class="modal-body">
	            <form action="deletePro" method="post">
				  <div class="form-group">
				   <label for="inputEmail3" >Product Id</label>
				   <input type="number" min="1" max="999" class="form-control" id="inputEmail3" name="pid" placeholder="Enter Product Id" required>
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
		    <h2>Product List</h2>
		  </div>
		  
				  <div class="panel-body">
            
            
              
            
		    <table class="table table-striped">
		      <thead>
		        <tr>
		        
		        	
		          <th>Product Id</th>
		          <th>Product name</th>
		          <th>ProductDescription</th>
		          <th>Price</th>
		          <th>ProductDate </th>
		          <th>Product ManfactureId</th>
		          
		        </tr>
		      </thead>
		      <tbody>
		       <#list products as p>
                <tr>
                
                    <td>${p.pid}</td>
                    <td>${p.pname}</td>
                    <td>${p.pdesc}</td>
                    <td>${p.price}</td>
                    <td>${p.pdate}</td>
                    <td>${p.manfid}</td>
                </tr>
           		 </#list>
		      </tbody>
		    </table>
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