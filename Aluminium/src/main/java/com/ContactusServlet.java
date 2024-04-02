package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbs.DBService;
import dto.Contactus;

@WebServlet("/ContactusServlet")
public class ContactusServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        Contactus c = new Contactus();
        c.setName(request.getParameter("name"));
        c.setNumber(request.getParameter("number"));
        c.setEmail(request.getParameter("email"));
        c.setMsg(request.getParameter("msg"));
        DBService db = new DBService();
        String target = "";
        try
        {
        int x = db.contact(c);
        if (x>0)
        {
            request.setAttribute("sms", "Thank you for giving your details!");
            target = "welcome1.jsp";
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
