<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import="pack.*" %>
    <%@ page import = "java.util.List, java.sql.*, pack.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="employee"  class="pack.Employee" scope="session" />

 <jsp:setProperty property="*" name="employee" />
 <%String name= employee.getName();  
	String mobile= employee.getMobno();
	String password= employee.getPassword();
	String cpass=employee.getCpassword();
	
	 String url="jdbc:mysql://localhost/employee";
	String user="root";
	String pass="";
	String sql="insert into employee(emp_name ,emp_address,emp_mobileno ,emp_password) values(?,?,?,?)";
	
	int m=0;
	try
	{
		if(name==null | name.equals("")|mobile==null | mobile.equals("") | password.equals("")|password==null|!password.equals(cpass)| cpass.equals("")|cpass==null )
		{
			out.println("Enter Proper Details");
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
            rd.include(request, response);
		}
		else
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.print("driver loaded");
			Connection con=DriverManager.getConnection(url,user,pass);
			System.out.print("connection established");
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, employee.getName());
			ps.setString(2, employee.getAddress());
			ps.setString(3, employee.getMobno());
			ps.setString(4, employee.getPassword());
			m=ps.executeUpdate();	
			if(m>0)
			 {
					out.print(employee.getName());
				 response.sendRedirect("Login.jsp");		 
				 
			 }
			 else{
				 response.sendRedirect("error-page.jsp");
			 }
		}
		
		
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
 
 
 %>
</body>
</html>