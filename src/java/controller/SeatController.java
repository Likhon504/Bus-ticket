/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.BusWithDate;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;

/**
 *
 * @author User
 */
public class SeatController extends HttpServlet {

 
    public static String seatData = null;
    public static String busId = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String seat = request.getParameter("bok_seat");
        String busid = request.getParameter("busid");
        System.out.println("Bok Seat : "+seat+", BusId : "+busid);
        
        
        //request.getRequestDispatcher("ApplyTicket.jsp").forward(request, response);
        seatData = seat;
        busId = busid;
        
        
        
        
//        Session s = SessionFactoo.getSessionFactoo().openSession();
//        BusWithDate bwd = s.get(BusWithDate.class,busId);
//        System.out.println("--------::::"+bwd.getDate());
    }

   
}
