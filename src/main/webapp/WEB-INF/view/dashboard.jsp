<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Hello, world!</title>
  </head>
  <style>
  /* Adjustments for the sidebar and content */
  .sidebar {
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    z-index: 100;
    padding: 48px 0 0; /* Height of navbar */
    width: 250px; /* Increase sidebar width */
    background-color: #ffffff;
    box-shadow: inset -1px 0 0 rgba(0, 0, 0, 0.1);
     overflow-y: auto;
  }

  .sidebar-item {
    border-bottom: 1px solid #dee2e6; /* Add border between sidebar items */
  }

  .content {
    margin-left: 250px; /* Width of sidebar */
    padding: 20px;
    overflow-y: auto;
  }

  /* Additional styles for footer */
  .footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    text-align: center;
    background-color: #f8f9fa;
    padding: 10px 0;
    box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
  }
 .container1{
  width: 800px;
  border: 1px solid #000;
  padding: 20px;
}
.center-button {
        display: flex;
        justify-content: center;
        margin-top: 20px; /* Adjust margin as needed */
    }

</style>
</head>
<body>
<script >
$(document).ready(function() {
	$(".employer").hide();
	$(".employee").show();
$("#product1").click(function(){
	  $(".employer").hide();
	  $(".employee").show();
	});
$("#product2").click(function(){
	  $(".employee").hide();
	  $(".employer").show();
	});

});


</script>
  <!-- Sidebar -->
  <div class="sidebar bg-light">
    <h2 class="text-center" style="font-size: 20px;">Welcome</h2>
    <ul class="nav flex-column">
      <li class="nav-item sidebar-item">
        <a class="nav-link active" href="#" id="product1">add product</a>
      </li>
      <li class="nav-item sidebar-item">
        <a class="nav-link active" href="#" id="product2">purchase order</a>
      </li>
      <li class="nav-item sidebar-item">
        <a class="nav-link" href="#">Edit</a>
      </li>
      <li class="nav-item sidebar-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
  </div>

  <!-- Page content -->
  <div class="content">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <!-- Brand/logo -->
        <a class="navbar-brand2" href="#" style="" >Home</a>
        
        <!-- Toggler/collapsing on mobile -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto">
            <!-- Normal link -->
            <li class="nav-item">
              <a class="nav-link" href="#">Home</a>
            </li>
            
            <!-- Dropdown menu -->
           <!--  <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Select User
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" id="emp" href="#">Employee</a></li>
                <li><a class="dropdown-item" id="empl"href="#">Employer</a></li>
              </ul>
            </li>
             -->
            <!-- Email link -->
            <li class="nav-item">
              <a class="nav-link" style="color: Black;" >${email}</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page content -->
    <div class="container mt-4" style=" overflow-y: auto;">
      <section class="employee">
     
      
 <h1>add product</h1>
     
    <div class="container1">
    
    <form class="saveProduct" method="post">
  <!-- <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Id</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="pid">
    </div>
  </div> -->
  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" name="name">
    </div>
  </div>

    <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">cost</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="cost" name="cost">
    </div>
  </div>
    
    <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Category</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="category" name="category">
    </div>
  </div>
    
     <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Quantity</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="quantity" name="quantity">
    </div>
  </div>
  
   <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Description</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="description" name="description">
    </div>
  </div>
  <div class="center-button">
            <button type="submit" class="btn btn-primary" onclick="saveproduct()">Submit</button>
        </div>
 
  </form>
     </div>
    
    </section>
      </div>  
      
     <script >
  function saveproduct(){
    	
    			 const formData={
    					        // Assuming you have ids for each input field
    					    name: $('#name').val(),
    					    cost: $('#cost').val(),
    					    category:$('#category').val(),
    					    quantity:$('#quantity').val(),
    					    description: $('#description').val()

    					 }
    			 
    			 $.ajax({
    				    type:"post",
    				    url:'saveProduct',
    				    data: JSON.stringify(formData),
    				    contentType: 'application/json',
    				    success: function(response) {
    			            console.log('Form submitted successfully:', response);
    			            alert('Form submitted successfully!');
    			        },
    			        error: function(jqXHR, textStatus, errorThrown) {
    			            console.error('Error submitting form:', textStatus, errorThrown);
    			            alert('Error submitting form: ' + textStatus);
    			        }

    				 });
    	
     }
     
      
     
     </script>
      
      
      

      
      <section class="employer">
      <h1>manage product</h1>
      
      <div class="maincontainer">
      <div class="smallcontainer">
     
      <table class="table">
      
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Cost</th>
      <th scope="col">Quantity</th>
       <th scope="col">Category</th>
       <th scope="col">Add</th>
    </tr>
  </thead>
   <c:forEach var="pr" items="${product}">
  <tbody>
    <tr>
      
      <td>${pr.pid}</td>
      <td>${pr.name}</td>
      <td>${pr.cost}</td>
      <td>${pr.quantity}</td>
      <td>${pr.category}</td>
      <td> <a class="btn btn-primary" href="#" role="button" onclick="addProduct(${pr.pid})">Add</a></td>
    </tr>
    
  </tbody>
  </c:forEach>
</table>
<script >
function addProduct(pid){
	
	console.log(pid);
 	$.ajax({
		type:"get",
		url:"addProduct/"+pid,
      
         contentType: 'application/json', 
	    success: function(response) {
            console.log('Form submitted successfully:', response);
            alert('Form submitted successfully!');
           
            // Populate form fields with response data
             $('#pid1').val(response.pid);
            $('#name1').val(response.name);
            $('#cost1').val(response.cost);
            $('#category1').val(response.category);
            $('#quantity1').val(response.quantity);
            $('#description2').val(response.description);
       
	    },
        error: function(jqXHR, textStatus, errorThrown) {
            console.error('Error submitting form:', textStatus, errorThrown);
            alert('Error submitting form: ' + textStatus);
        }

		
		
		
	});   
	
	
}



</script>
    </div>  
      <div class="smallcontainer">
      
      <div class="container1">
    
    <form class="saveProduct" method="post">
   <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Id</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="pid1" name="pid">
    </div>
  </div> 
  
  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name1" readonly="" name="name">
    </div>
  </div>

    <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">cost</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="cost1" readonly="" name="cost">
    </div>
  </div>
    
    <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Category</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="category1" readonly="" name="category">
    </div>
  </div>
    
     <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Quantity</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="quantity1" name="quantity">
    </div>
  </div>
  
   <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Description</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="description2" readonly="" name="description">
    </div>
  </div>
   <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Final</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="final" onclick="calculateFinalCost()" name="final">
    </div>
  </div>
  <div class="center-button">
            <button type="submit" class="btn btn-primary" >Submit</button>
        </div>
 
  </form>
     </div>
    
      
      
      </div>
      
      
      
      
      <script>
      
      function calculateFinalCost(){
    	  var quantity= $('#quantity1').val();
    	  console.log("quantity" +quantity);
    	  var cost= $('#cost1').val();
    	  var finall=quantity*cost;
    	  $('#final').val(finall);
      }
      </script>
      
      </div>
      </section>
    </div>

    <!-- Footer -->
   <!--  <footer class="footer">
      <div class="container">
        <span class="text-muted">Footer content goes here.</span>
      </div>
    </footer>
  </div> -->
    
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    
  </body>
</html>