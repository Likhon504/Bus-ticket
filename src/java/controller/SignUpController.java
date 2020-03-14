/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Admin;
import bean.User;
import dao.AdminDeclaration;
import dao.AdminOperation;
import dao.UserDeclaration;
import dao.UserOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class SignUpController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        String username, email, password;

        username = req.getParameter("username");
        email = req.getParameter("email");
        password = req.getParameter("password");
        
        User user = new User(username, email, password);
        
        UserDeclaration ud = new UserOperation();
        long id = ud.insertUser(user);
        
//        Admin admin = new Admin();
//        ud.saveAdmin(admin);
        
        PrintWriter out = resp.getWriter();
        if (id > 0) {
            //out.println("Registration Completed...");
            resp.sendRedirect("LogInn.jsp");
        }else{
            out.println("Registration Not Completed......    Try Again.......");
        }
    }
}
