<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
      <title>Employee</title>
      <link rel="stylesheet" href="/css/style.css">
      <!-- Bootstrap cdn's-->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.3/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
      <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">

  </head>
  <body>
    <header>
        <!-- Navigation Bar At top -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#" id="top"> Employee</a>
        </nav>            
    </header>
    
    <section>
        <div class="container mt-5 col-md-4">
            <h2 class="text-capitalize text-center mb-5"> Employee Registration </h2>
            <hr class="mb-5">
            <div class="card">
                <h5 class="card-header font-weight-bold text-muted">Register</h5>
                <div class="card-body">
                    <form action="register_details.jsp" method="post">
                        <div class="form-group">
                        <label for="name">Name</label>
                          <input type="text" class="form-control" placeholder="Enter Name" name="name" required>
                        </div>
                        <div class="form-group">
                        <label for="Mobile No">Mobile No</label>
                          <input type="text" class="form-control" placeholder="Enter Mobile No" name="mobno" required>
                        </div>
                        <div class="form-group">
                        <label for="Address">Address</label>
                          <input type="text" class="form-control" placeholder="Enter Address" name="address" required>
                        </div>
                        <div class="form-group">
                          <label for="Password">Password</label>
                          <input type="password" class="form-control"  placeholder="Enter Password" name="password" required>
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Confirm Password</label>
                          <input type="password" class="form-control"  placeholder="Enter Confirm Password" name="cpassword" required>
                        </div>
                        <button type="submit" class="btn btn-success">Register</button>
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