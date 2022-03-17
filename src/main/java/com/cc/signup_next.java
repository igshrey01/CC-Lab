package com.cc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cc.SignupCheck;

@WebServlet("/signup")
public class signup_next extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//parameter changes 
		String eid=request.getParameter("eid");
		String pass=request.getParameter("pass");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String dob=request.getParameter("dob");
		String cnu=request.getParameter("cnu");
		
		SignupCheck dao= new SignupCheck();
		
		if(dao.check(eid, pass,fname,lname,dob,cnu))
		{
			
			HttpSession session=  request.getSession();
			session.setAttribute("username", eid);
			
			
			
			response.sendRedirect("login.jsp");
		}
		else
		{
			
			response.sendRedirect("signup.jsp");
		}
	}

}
