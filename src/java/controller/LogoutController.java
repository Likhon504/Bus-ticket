/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


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
public class LogoutController extends HttpServlet {

    protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		//out.println("thanq you!!, Your session was destroyed successfully!!");
		HttpSession session = request.getSession(false);
		// session.setAttribute("user", null);
		session.removeAttribute("namee");
		session.getMaxInactiveInterval();
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.forward(request,response);
	}
}
