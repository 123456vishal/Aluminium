package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbs.DBService;
import dto.Reg;


@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		Reg p=new Reg();
		p.setFirstName(request.getParameter("firstName"));
        p.setMiddleName(request.getParameter("middleName"));
        p.setLastName(request.getParameter("lastName"));
        p.setFatherName(request.getParameter("fatherName"));
        p.setMotherName(request.getParameter("motherName"));
        p.setCountryCode(request.getParameter("countryCode"));
        p.setMobileNumber(request.getParameter("mobileNumber"));
        p.setEmail(request.getParameter("email"));
        p.setEducationYear(request.getParameter("educationYear"));
        p.setLastPassedClass(request.getParameter("lastPassedClass"));
        p.setOccupation(request.getParameter("occupation"));
        p.setAddress(request.getParameter("address"));
        p.setPhoto(request.getParameter("photo"));
        DBService db = new DBService();
        String target="";
		try
		{
			int x=db.reg(p);
			if(x>0)
			{
				request.setAttribute("sms", "Thank you for giving your details!");
	            target = "welcome.jsp";
			}
			else
			{
				target = "error.jsp";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/" + target);
    	rd.forward(request, response);
		
	}

}
