<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!--    <meta name="keywords" content="" />
<meta name="description" content="" />-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
	 <!--<link href="templatemo_style.css" rel="stylesheet" type="text/css" /> -->
</head>
<body>
    
    <!--navigation bar start-->

<body class="bg-dark">
    <nav class="navbar navbar-expand-lg bg-info">
        <div class="container">
            <img src="images/samosa.jpg" img class="border rounded-pill border-2 border-warning m-1" height="150" width="110">
          <a class="navbar-brand text-white fs-2 rounded-pill m-2" href="#">VADA <span class="text-warning">PAV</span> CENTER</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu" aria-controls="menu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="menu">
            <ul class="navbar-nav">
              <li class="nav-item fs-5 border border-2 ps-2 pe-2 border-warning  rounded-pill m-3 text-center bg-dark mt-2">
                <a class="nav-link text-white" href="index.jsp">&nbsp;HOME</a>
              </li>
              <li class="nav-item fs-5 border border-2 ps-3 pe-3 border-warning rounded-pill m-3 text-center bg-dark mt-2">
                <a class="nav-link text-white" href="FoodServlet?process=allFood">&nbsp;Menu</a>
              </li>
              <li class="nav-item fs-5 border border-2 ps-2 pe-2 border-warning rounded-pill m-3 text-center bg-dark mt-2">
                <a class="nav-link text-white" href="Company.jsp">&nbsp;COMPANY</a>
              </li>
               <li class="nav-item fs-5 border border-2 ps-2 pe-2 border-warning rounded-pill m-3 text-center bg-dark mt-2">
                <a class="nav-link text-white" href="Contact.jsp">CONTACT US</a>
              </li>
              
              
              <li class="nav-item fs-5 border border-2 ps-2 pe-2 border-warning  rounded-pill m-3 text-center bg-dark mt-2">
                <a class="nav-link text-white" href="team.html">&nbsp;@TEAMVADAPAV</a>
              </li>
            </ul>
           <!--  <button class="nav-link fs-1 ps-4 m-5 pb-2" data-bs-toggle="modal" data-bs-target="#login">
                <i class="bi bi-box-arrow-right"></i>-->
            </div>
          </div>
       <!--  </div>
      </nav>--> 
      
    </nav>
    <%
     String login=(String)session.getAttribute("login");
    
    %>
    
   <!-- <div id="templatemo_menu">
        <ul>
        	<li class="current"><a href="Home.jsp"><b>Home</b></a></li>-->
        	
        	<% if(login!=null && login.equals("admin")){ %>
            <li><a href="AddFood.jsp"><b>Add food</b></a></li>
             <li><a href="OrderServlet?process=allOrders"><b>All Order</b></a></li>
            
            
            <% }%>
            <!-- <li><a href="FoodServlet?process=allFood"><b> Menus</b></a></li>
            <li><a href="Company.jsp"><b>Company</b></a></li>
            <li ><a href="Contact.jsp"><b>Contact</b></a></li> -->
            <%if(login!=null && login.equals("customer")){ %>
             <li><a href="CustomerServlet?process=myProfile"><b>Profile</b></a></li>
              <li><a href="CustomerServlet?process=deleteProfile"><b>Delete Profile</b></a></li>
              <li><a href="CartServlet?process=myCart"><img src="images/cart.png" style="color:white; width: 35px;"></a></li>
              <li><a href="OrderServlet?process=orderHistory"><b>My Order History</b></a></li>
              
             
             
             
            
            <%}%>
            
            <%if(login==null){ %>
            <ul>
             <li ><a href="Login.jsp"><b>Login</b></a></li>
               <li><a href="AddCustomer.jsp"><b>Register</b></a></li>
             </ul>
             <%} %>
             <% if(login!=null){ %>
          <li><a href="LoginServlet?process=logout" onclick="return confirm('Are you sure you want logout?')"><b>Log out</b></a></li>
          <%}%>
            
    
    
</body>
</html>