/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out = resp.getWriter();

        String name, pass;
        name = req.getParameter("username");
        pass = req.getParameter("password");

        HttpSession session = req.getSession();
        session.setAttribute("app_user", name);
        
        String user = (String) session.getAttribute("app_user");
        
        System.out.println("----------------- > User  :  "+user);
        
//        /*
//        if(session!=null)
//        session.setAttribute("user", name);
//         */
        if (UserOperation.validate(name, pass)) {
            RequestDispatcher rd = req.getRequestDispatcher("Booking.jsp");
            rd.forward(req, resp);
        } else {
            out.print("<p style=\"color:red\">Sorry username or password error</p>");
            RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
            rd.include(req, resp);
        }
        
        out.close();
    }
}
