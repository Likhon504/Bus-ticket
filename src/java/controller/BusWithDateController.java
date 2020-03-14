/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.*;
import bean.BusWithDate;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author User
 */
public class BusWithDateController extends HttpServlet {

  
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String fromLoc = request.getParameter("fromLoc");
        String toLoc = request.getParameter("toLoc");
        String date = request.getParameter("dep_date");
        
        System.err.println("F : "+fromLoc+", T : "+toLoc+", D : "+date);
       
        
        SessionFactoo sf = new SessionFactoo();

        Session s = SessionFactoo.getSessionFactoo().openSession();

        List<Bus> busList = s.createSQLQuery("SELECT * FROM bus where depfrom='" + fromLoc + "' and destination='" + toLoc + "'").addEntity(Bus.class).list();

        
      //  List<Bus> busList = s.createSQLQuery("select * from Bus").list();
       
        //List<BusWithDate> busDateList = s.createQuery("from BusWithDate where date = '"+date+"'", BusWithDate.class).list();
        
        System.out.println("BusList : "+busList.toString());
        //System.out.println("\n\n\nBusDateList : "+busDateList.toString());
        
        request.getRequestDispatcher("buslist.jsp").forward(request, response);
        
    }

   

}
