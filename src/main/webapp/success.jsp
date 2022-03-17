<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To JSP</title>
</head>
<style>
	body{
		color:white;
		background: rgb(15,32,39);
		background: linear-gradient(90deg, rgba(15,32,39,1) 0%, rgba(32,58,67,1) 35%, rgba(44,83,100,1) 100%);
	}
	#p1{
		text-align : center;
		font-size:30px;
		font-family: Arial, Helvetica, sans-serif;
		color:white;
	}
	th{
		margin:100px;
	}
	.logot{
		display:absolute;
		right:30px;
		top:20px;
	}
</style>
<body>

   <%
   
   response.setHeader("no-store","must-revalidate");
   response.setHeader("Pragma","no-cache");
   response.setHeader("Expires","0");
   if(session.getAttribute("username")==null)
      response.sendRedirect("login.jsp");
   %>
	
	
	

    <p id = "p1"><b> WELCOME ${username} <b><p>
    <br>
    <br>
    
  	<%
  		Connection con = null;
  		
  		try{
  			Class.forName("com.mysql.cj.jdbc.Driver");
  			String sql="SELECT * FROM shrey_111916045_details";
  			con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/world","root","Itsmeshrey1@");
  			PreparedStatement st=con.prepareStatement(sql);
  			String sql1 =  "SELECT * FROM shrey_111916045_salary";
  	      	PreparedStatement st1=con.prepareStatement(sql1);
  	        ResultSet rs1 = st1.executeQuery();
  	        ResultSet rs=st.executeQuery();
  	        while(rs.next() && rs1.next()){
  	        	out.print("Employee Id : "+rs.getString(1)+"| First Name : " +rs.getString(3)+"| Last Name : " +rs.getString(4)+"| DOB : " +rs.getString(5)+"| Contact Number : " +rs.getString(6)+"|Role : "+rs1.getString(2)+"| Monthly Salary : " +rs1.getString(3)+"| Yearly Bonus : " +rs1.getString(4)+"<br>");
  	        }
  	        
  		}
  		catch(Exception e){
  		}
  		
  		
  		
  	
  	%>
    <form id="logot" action="Logout">
       <input type="submit" value="Logout">
    </form>
    <form id="upd" action="Update" method="post">
    <input type="submit" value="Update">
    </form>

    
    
    
</body>
</html>