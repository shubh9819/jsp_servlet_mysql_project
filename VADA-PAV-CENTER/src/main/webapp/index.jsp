<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VADA PAW CENTER</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
     <jsp:include page="Header.jsp"></jsp:include>
    <jsp:include page="Message.jsp"></jsp:include>
     <form action="FoodServlet" method="post">
    <input type="hidden" name="process" value="searchFood">
    
     <input class="form-control"  type="text" name="userInput" placeholder="Enter dish name">
     <select name="search" class="form-select" style="width:150px ,height=10px" >
      <!-- <option value="byCategory">Search by category</option>
     <option value="byType">Search by type</option>
       <option value="byId">Search by Id</option>  -->
      <option value="byName">Search by Name</option>
    
     
     </select>
          <input class="btn btn-sm btn-success rounded-pill" style="margin-right: 300px" class="form-control" type="submit" value="Search">
     
     
     </form>
     
     
     <!-- START PRODUCT SECTION -->
    <div class="container-fluid mt-2 mb-4 text-white text-center  border border-2 border-warning">
      <div class="fs-1 border border-1 border-warning rounded-2 bg-info">Varieties Here</div>

      <div class="row">

          <div class="col-sm-3 mt-1 mb-1">
            
              <div class="card border border-1 border-warning shadow-lg p-2 bg-black">
                
                  <div class="card-header bg-black">
                      <img src="images/samosa.jpg" class="img-fluid">
                  </div>
                  <div class="card-body">
                      <h4 class="h4 text-warning text-center">vada-chillie-paw</h4>
                      <p class="text-white">Vada pav, also spelled wada pav, is a vegetarian burger. A potato ball or patty, laced with spices, green chili, and garlic, is dipped into a besan (Indian chickpea flour) batter and deep fried. </p>
                  </div>
                  <div class="card-footer text-center">
                      <button class="btn btn-warning"><i class="bi bi-cart"></i></button>
                      
                  </div>
                  

              </div>
          </div>
          <div class="col-sm-3 mt-1 mb-1">
            <div class="card border border-1 border-warning shadow-lg p-2 bg-black">
                
              <div class="card-header bg-black">
                  <img src="images/samosa.jpg" class="img-fluid">
              </div>
              <div class="card-body">
                  <h4 class="h4 text-warning text-center">vada-samosa-paw</h4>
                  <p class="text-white">Vada pav, also spelled wada pav, is a vegetarian burger. A potato ball or patty, laced with spices, green chili, and garlic, is dipped into a besan (Indian chickpea flour) batter and deep fried. </p>
              </div>
              <div class="card-footer text-center">
                  <button class="btn btn-warning"><i class="bi bi-cart"></i></button>
                  
              </div>
              

          </div>
          </div>
          <div class="col-sm-3 mt-1 mb-1">
            <div class="card border border-1 border-warning shadow-lg p-2 bg-black">
                
              <div class="card-header bg-black">
                  <img src="images/samosa.jpg" class="img-fluid">
              </div>
              <div class="card-body">
                  <h4 class="h4 text-warning text-center">-double-vada-paw</h4>
                  <p class="text-white">Vada pav, also spelled wada pav, is a vegetarian burger. A potato ball or patty, laced with spices, green chili, and garlic, is dipped into a besan (Indian chickpea flour) batter and deep fried. </p>
              </div>
             <!--  --> <div class="card-footer text-center">
                  <button class="btn btn-warning"><i class="bi bi-cart"></i></button>
                  
              </div>
              

          </div>
          </div>
          <div class="col-sm-3 mt-1 mb-1">
            <div class="card border border-1 border-warning shadow-lg p-2 bg-black">
                
              <div class="card-header bg-black">
                  <img src="images/samosa.jpg" class="img-fluid">
              </div>
              <div class="card-body">
                  <h4 class="h4 text-warning text-center">tikha-vada-paw</h4>
                  <p class="text-white">Vada pav, also spelled wada pav, is a vegetarian burger. A potato ball or patty, laced with spices, green chili, and garlic, is dipped into a besan (Indian chickpea flour) batter and deep fried. </p>
              </div>
              <div class="card-footer text-center">
                  <button class="btn btn-warning"><i class="bi bi-cart"></i></button>
                  
              </div>
              

          </div>
          </div>
          </div>
          </div>

          <!-- END PRODUCT CENTER -->
     
     <div class="container-fluid mt-2 mb-4 text-white text-center  border border-2 border-warning">
      <div class="fs-1 border border-1 border-warning rounded-2 bg-info">More Varieties Here</div>

      <div class="row">

          <div class="col-sm-3 mt-1 mb-1">
            
              <div class="card border border-1 border-warning shadow-lg p-2 bg-black">
                
                  <div class="card-header bg-black">
                      <img src="images/samosa.jpg" class="img-fluid">
                  </div>
                  <div class="card-body">
                      <h4 class="h4 text-warning text-center">vada-chillie-paw</h4>
                      <p class="text-white">Vada pav, also spelled wada pav, is a vegetarian burger. A potato ball or patty, laced with spices, green chili, and garlic, is dipped into a besan (Indian chickpea flour) batter and deep fried. </p>
                  </div>
                  <div class="card-footer text-center">
                      <button class="btn btn-warning"><i class="bi bi-cart"></i></button>
                      
                  </div>
                  

              </div>
          </div>
          <div class="col-sm-3 mt-1 mb-1">
            <div class="card border border-1 border-warning shadow-lg p-2 bg-black">
                
              <div class="card-header bg-black">
                  <img src="images/samosa.jpg" class="img-fluid">
              </div>
              <div class="card-body">
                  <h4 class="h4 text-warning text-center">vada-samosa-paw</h4>
                  <p class="text-white">Vada pav, also spelled wada pav, is a vegetarian burger. A potato ball or patty, laced with spices, green chili, and garlic, is dipped into a besan (Indian chickpea flour) batter and deep fried. </p>
              </div>
              <div class="card-footer text-center">
                  <button class="btn btn-warning"><i class="bi bi-cart"></i></button>
                  
              </div>
              

          </div>
          </div>
          <div class="col-sm-3 mt-1 mb-1">
            <div class="card border border-1 border-warning shadow-lg p-2 bg-black">
                
              <div class="card-header bg-black">
                  <img src="images/samosa.jpg" class="img-fluid">
              </div>
              <div class="card-body">
                  <h4 class="h4 text-warning text-center">-double-vada-paw</h4>
                  <p class="text-white">Vada pav, also spelled wada pav, is a vegetarian burger. A potato ball or patty, laced with spices, green chili, and garlic, is dipped into a besan (Indian chickpea flour) batter and deep fried. </p>
              </div>
             <!--  --> <div class="card-footer text-center">
                  <button class="btn btn-warning"><i class="bi bi-cart"></i></button>
                  
              </div>
              

          </div>
          </div>
          <div class="col-sm-3 mt-1 mb-1">
            <div class="card border border-1 border-warning shadow-lg p-2 bg-black">
                
              <div class="card-header bg-black">
                  <img src="images/samosa.jpg" class="img-fluid">
              </div>
              <div class="card-body">
                  <h4 class="h4 text-warning text-center">tikha-vada-paw</h4>
                  <p class="text-white">Vada pav, also spelled wada pav, is a vegetarian burger. A potato ball or patty, laced with spices, green chili, and garlic, is dipped into a besan (Indian chickpea flour) batter and deep fried. </p>
              </div>
              <div class="card-footer text-center">
                  <button class="btn btn-warning"><i class="bi bi-cart"></i></button>
                  
              </div>
              

          </div>
          </div>
          
          </div>
</div>
          <!-- END PRODUCT CENTER -->
     
         <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>