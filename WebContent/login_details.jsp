<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import="pack.*" %>
    <%@ page import = "java.util.List, java.sql.*, pack.Employee" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
      <title>Employee</title>
      <link rel="stylesheet" href="/css/style.css">
      <!-- Bootstrap cdn's-->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.3/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
      <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
      
<style>
*{
    margin: 0px;
    padding: 0px;
    font-family: 'Source Sans Pro', sans-serif;

}
</style>
</head>
<body>
<jsp:useBean id="employee"  class="pack.Employee" scope="session" />

 <jsp:setProperty property="*" name="employee" />
<%          
String name=employee.getName();  
String password=employee.getPassword();


String url="jdbc:mysql://localhost/employee" ;
	String user="root";
	String pass="";
	String sql1 = "select * from employee";
try
{
	if(name==null | name=="" |password==null | password=="")
	{
		out.println("Enter Proper Details");
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
        rd.include(request, response);
	}
	else
	{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("Driver Loaded");
		Connection conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Database Connected!");
		
		Statement stmt=conn.createStatement();
		ResultSet res = stmt.executeQuery(sql1);

		Boolean result=false;
	    while (res.next()) 
	    {
	      String ename = res.getString("emp_name");  
	      String epassword=res.getString("emp_password");
	      if(name.equals(ename) & password.equals(epassword))
	      {
	    	  int id=res.getInt("emp_id");
	    	  String add=res.getString("emp_address");
	    	  String mobno=res.getString("emp_mobileno");    	  
	    	  System.out.print(id);
	    	  session.setAttribute("id", id);
	    	  session.setAttribute("name", ename);
	    	  session.setAttribute("add", add);
	    	  session.setAttribute("mobno",mobno);
	    	  session.setAttribute("pass", password);
	    	result=true;
	    	break;
	      }
	    }
	    if(result==true)
	     {
	    	 out.print("Success");
			 response.sendRedirect("home.jsp");
	     }
	     else
	     {
	    	 response.sendRedirect("error-page.jsp");
	 		
	     }  
	}
}
catch(Exception e)
{
	System.out.println(e);
	
}
 %>
</body>
</html>