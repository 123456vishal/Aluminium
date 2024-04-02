package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbs.DBService;
import dto.Admin;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet
{

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {

        Admin a = new Admin();
        a.setEmail(request.getParameter("email"));
        a.setPassword(request.getParameter("password"));
        DBService db = new DBService();
        String target = "";
        String op = request.getParameter("role");

        if (op.equals("user"))
        {
            boolean isValid = db.user(a);
            if (isValid) 
            {
            	HttpSession session = request.getSession(false);
                if (session != null) 
                {
                    session.invalidate();
                }
                session = request.getSession(true);
                session.setAttribute("Email", a.getEmail());
                target = "index.jsp";
            } 
            else 
            {
            	request.setAttribute("sms", "<h6>please correct Email or Password</h6>");
                target = "login.jsp";   
            }
        } 
        
        
        else if (op.equals("admin")) 
        {
            boolean isValid = db.admin(a);
            if (isValid) 
            {
                target = "index.jsp";
            } 
            else 
            {
            	request.setAttribute("sms", "<h6>please correct Email,Password or Role</h6>");
                target = "login.jsp";
            }
        } 
        else 
        {
            request.setAttribute("msg", "Invalid role");
            target = "login.jsp";
        }

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/" + target);
        rd.forward(request, response);
    }
}
