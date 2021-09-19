<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<%
                			String date=request.getParameter("date");
                        	String hour=request.getParameter("hours");
                       		String work=request.getParameter("work");	  
                       		float hourf=Float.parseFloat(hour);
                       		float amount=500,salary;
							salary =amount*hourf;
                       		int id=(int)session.getAttribute("id");
                       		String url="jdbc:mysql://localhost/employee" ;
            				String user="root";
            				String pass="";
            				String sql="insert into emp_salary(hours ,date,work_desp ,salary,emp_id) values(?,?,?,?,?)";
            				try
            				{
            					Class.forName("com.mysql.jdbc.Driver");
            					System.out.println("Driver Loaded");
            					Connection con=DriverManager.getConnection(url,user,pass);
            					System.out.println("Database Connected!");
            					PreparedStatement ps=con.prepareStatement(sql);
            					ps.setFloat(1, hourf);
            					ps.setString(2, date);
            					ps.setString(3, work);
            					ps.setFloat(4, salary);
            					ps.setInt(5, id);
            					int m=ps.executeUpdate();	
            					if(m>0)
            						response.sendRedirect("home.jsp");
            					else
            					{
            						response.sendRedirect("error-page.jsp");
            					}
            				}catch(Exception e)
            				{
            					System.out.print(e);
            				}	
						%>
</body>
</html>