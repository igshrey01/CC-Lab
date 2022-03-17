<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
	<h1>Update Value</h1>
	<form action="signup" method="post">
	 Enter E_id : <input type="text" name="eid"><br>
     Enter Password : <input type="password" name="pass"><br>
     Enter First Name : <input type="text" name="fname"><br>
     Enter Last Name : <input type="text" name="lname"><br>
     Enter Date Of Birth : <input type="text" name="dob"><br>
     Enter Contact Number : <input type="text" name="cnu"><br>
     Enter Role : <input type="text" name="lname"><br>
     Enter Monthly Salary : <input type="text" name="dob"><br>
     Enter Yearly Bonus : <input type="text" name="cnu"><br>
     <input type="submit" value="Update">
     
	</form>
	<%
    	String eid=request.getParameter("eid");
		String pass=request.getParameter("pass");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String dob=request.getParameter("dob");
		String cnu=request.getParameter("cnu");
		String sql="UPDATE 111916045_shrey_details SET ID = ?,pass = ?,fname = ?,lname = ?,dob = ?,contactNum = ?";
		String url="jdbc:mysql://localhost:3306/world";
		String username ="root";
		try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","Itsmeshrey1@");
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, eid);
        st.setString(2,pass);
        st.setString(3, fname);  
        st.setString(4, lname);
        st.setString(5, dob);
        st.setString(6, cnu);
        int rs=st.executeUpdate();
        if(rs>0)
        {
        	out.print("Update Successfull");
        }
        }
		catch(Exception e){
			
		}
        
		
		
     %>
</body>
</html>