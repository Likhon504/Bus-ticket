/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Bus;
import bean.BusWithDate;
import bean.Passenger;
import dao.AdminOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import dao.AdminDeclaration;

/**
 *
 * @author User
 */
public class PassengerController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String pname, paddress, pmobile, busname,tfrom,tto, pseat, totalpayment, jdate,jtime;

        Session s = SessionFactoo.getSessionFactoo().openSession();
        //Bus b = s.get(Bus.class, Integer.parseInt(busId));

        int iid = Integer.parseInt(req.getParameter("iid"));
        pname = req.getParameter("pname");
        paddress = req.getParameter("paddress");
        pmobile = req.getParameter("pmobile");
        busname = req.getParameter("busname");
        tfrom= req.getParameter("tfrom");
               tto= req.getParameter("tto");
        pseat = req.getParameter("pseat");
        totalpayment = req.getParameter("totalpayment");
        jdate = req.getParameter("jdate");
        jtime= req.getParameter("jtime");
        System.out.println("........."+pname+paddress+pmobile+busname+pseat+totalpayment+jdate);
        
        int bid = Integer.parseInt(req.getParameter("bid"));
        // noofseat = Long.parseLong(req.getParameter("numofseat"));
        // totalpayment =  Long.parseLong(nofseat)*b.getTprice();
       
        String user = (String) req.getSession().getAttribute("app_user");
        Passenger passenger = new Passenger(user, pname, paddress, pmobile, busname, tfrom, tto, pseat, totalpayment, jdate, jtime);

        AdminDeclaration ad = new AdminOperation();

        long id = ad.insertPassenger(passenger);
        PrintWriter out = resp.getWriter();
        if (id > 0) {
            //out.println("Registration Completed...");
            BusWithDate bwd = new BusWithDate(bid, jdate, pseat);
            bwd.setId(iid);
            AdminDeclaration add = new AdminOperation();
            Integer idd = add.updateBookSeat(bwd);
            
            
            req.setAttribute("passenger", passenger);
//            resp.sendRedirect("PrintTicket.jsp");
            req.getRequestDispatcher("PrintTicket.jsp").forward(req, resp);
            
        } else {
            out.println("Not Completed......    Try Again.......");
        }

    }

}
