package com.cc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/success")
public class success extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String lsname=request.getParameter("uLname");
		
		fetchDetails dao= new fetchDetails();
		if(dao.check(lsname))
		{
			HttpSession session=  request.getSession();
			response.sendRedirect("signup.jsp");
		}
		else
		{
			
			response.sendRedirect("success.jsp");
		}
	}
	

}
