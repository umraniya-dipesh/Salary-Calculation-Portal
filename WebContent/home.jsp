<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import="pack.*" %>
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
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

      <style>
        .carousel-inner img{
          width: 100%;
          height: 100%;
        }
        
        .marginFix{
        	font-size: 19px;
        	
        }
      </style>


  </head>
<body>
<header>
              <!-- Navigation Bar At top -->
              <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                  <a class="navbar-brand pl-5" href="#" >Employee Details</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="salary.jsp">Salary </a>
                      </li>
                       <li class="nav-item">
                        <a class="nav-link" href="logout.jsp">Logout </a>
                      </li>
                    </ul>
                  </div>
                  </nav>
                  </header>
</body>

		<%
			int id=(int)session.getAttribute("id");
			//out.print(id);
			String name=(String)session.getAttribute("name");
			
			out.print("<div class='marginFix alert alert-success text-center text-capitalize font-weight-bold alert-dismissible fade show' role='alert'>&nbsp;&nbsp;&nbsp;&nbsp;<i class='fa fa-user-circle-o' aria-hidden='false'></i> Welcome "+ name+
					"</div>");
			
			String url="jdbc:mysql://localhost/employee" ;
			String user="root";
			String pass="";
			String sql="select * from emp_salary where emp_id='"+id+"'";
			// selct sum(salary) from emp_salary where emp_id=id;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Driver Loaded");
				Connection con=DriverManager.getConnection(url,user,pass);
				System.out.println("Database Connected!");
				Statement stmt=con.createStatement();
				//int m=stmt.executeUpdate(sql);
				out.print("<div class='alert text-center font-weight-bold alert-warning'><i class='fa fa-calendar-check-o' aria-hidden='true'></i>&nbsp;&nbsp; Your Daily Timesheet</div>");
				
				out.print("<table class='table table-striped' border='1'width='80%' align='center'> ");
				out.print("<tr align='center'><th  >Date</th><th>Hours</th><th>Work description</th><th>salary</th></tr>");
				
	
					ResultSet res = stmt.executeQuery(sql);
					float totalSalary = 0 ;
				    while (res.next()) 
				    {
				     		float hour = res.getFloat("hours");  
				      		float salary=res.getFloat("salary");
				    	 	String date=res.getString("date");
				    	  	String work=res.getString("work_desp");
							totalSalary += salary;
				      		out.println("<tr><td align='center'>"+date+"</td>"+
				      				"<td align='center'>"+hour+"</td>"+
				      				"<td align='center'>"+work+"</td>"+
				      				"<td align='center'>"+salary+"</td>");
				    }
				
					out.print("<div class='alert text-center font-weight-bold alert-primary'><i class='fa fa-inr' aria-hidden='true'></i>&nbsp;&nbsp; Total Salary :- "+ totalSalary +"</div>");  
			}
			
			catch(Exception e)
			{
				System.out.print(e);
			}	
			
	%>
</html>