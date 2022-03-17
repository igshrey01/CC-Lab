<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<form action="Login" method="post">
     Enter Employee_ID : <input type="text" name="uname"><br>
     Enter Password : <input type="password" name="upass"><br>
    <input type="submit" value="login">
     
   </form>
   <form action="Signup" method="post">
   	<input type="submit" value="Signup">
   </form>
   
</body>
</html>