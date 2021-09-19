<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import = "java.util.List, java.sql.*, pack.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
      <title>Employee Details</title>
      <link rel="stylesheet" href="/css/style.css">
      <!-- Bootstrap cdn's-->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.3/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
      <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

      <style>
        .carousel-inner img{
          width: 100%;
          height: 100%;
        }
        <style>
*{
    margin: 0px;
    padding: 0px;
    font-family: 'Source Sans Pro', sans-serif;

}
.footer-admin
{
    bottom: 0;
    width: 100%;
    height: 50px;
    line-height: 0px;
    background-color: rgba(0,0,0,.03);
    text-align: center;
    position: fixed;
}
      </style>

</head>
<body>
<header>
              <!-- Navigation Bar At top -->
              <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                  <a class="navbar-brand pl-5" href="/" >Employee Details</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item ">
                        <a class="nav-link" href="home.jsp">Home</a>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#">Salary <span class="sr-only">(current)</span> </a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="logout.jsp">Logout </a>
                      </li>
                     
                    </ul>
                  </div>
                  </nav>
                  </header>
                  <section>
                     <jsp:useBean id="employee"  class="pack.Employee" scope="session" />

 <jsp:setProperty property="*" name="employee" />
                  
        <div class="container mt-5 col-md-4">
            <h2 class="text-capitalize text-center mb-5"> Salary Calculation </h2>
            <hr class="mb-5">
            <div class="card">
                <h5 class="card-header font-weight-bold text-muted">Salary Calculation</h5>
                <div class="card-body">
                    <form  action="salary_calculate.jsp" method="post">
                        <div class="form-group">
                          <label for="date">Date</label>
                          <input type="date" class="form-control" placeholder="Enter Date" name="date" required >
                        </div>
                        <div class="form-group">
                          <label for="hours">Hours</label>
                          <input type="text" class="form-control" placeholder="Enter Working Hours" name="hours" required>
                        </div>
                        <div class="form-group">
                          <label for="work">Work Description</label>
                          <input type="text" class="form-control" placeholder="Enter Work Description" name="work" required>
                        </div>
                         <button type="submit" class="btn btn-success" >Calculate</button>
                      </form>
                </div> 
              </div>	
        </div>
    </section>
         <footer class="footer-admin card-footer text-muted mt-5">
            <div class="container text-center mt-2">
                <div class="text-success text-capitalize font-weight-bold" > © 2020-2021 Employee</div> 
            </div>   
        </footer>
</body>
</html>