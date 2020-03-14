/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Bus;
import dao.AdminOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.AdminDeclaration;

/**
 *
 * @author User
 */
public class AddBusController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String busname, depfrom, destination, depr_time, arival_time;
        int tprice, seatno;
        
        
        busname = req.getParameter("busname");
        depfrom = req.getParameter("depfrom");
        destination = req.getParameter("destination");
        depr_time = req.getParameter("depr_time");
        arival_time = req.getParameter("arival_time");
        tprice = Integer.parseInt(req.getParameter("tprice"));
        seatno = Integer.parseInt(req.getParameter("seatno"));

        Bus bus = new Bus(busname, depfrom, destination, depr_time, arival_time, tprice, seatno);
        
        System.err.println("BUS : "+bus);
        AdminDeclaration ad = new AdminOperation();
        long id = ad.insertBus(bus);
        PrintWriter out = resp.getWriter();
        if (id > 0) {
            //out.println("Registration Completed...");
            resp.sendRedirect("login.jsp");
        }else{
            out.println(" Not Completed......    Try Again.......");
        }

    }

}
