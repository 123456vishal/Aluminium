package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat.Style;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbs.DBService;
import dto.Admin;


@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		Admin a = new Admin();
		a.setEmail(request.getParameter("email"));
		a.setPassword(request.getParameter("password"));
		DBService db = new DBService();
		String target="";
		int x =db.signup(a);
		if(x>0)
		{
		
			request.setAttribute("sms", "<h4>Signup successfully</h4>");

			target="signup.jsp";
		}
		else
		{
			request.setAttribute("sms","<h4>Invalid Email/Password</h4>");
			
			target="signup.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/"+target);
		rd.forward(request, response);
	}

}
