/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.Bus;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;

/**
 *
 * @author User
 */
public class LoadBusData extends HttpServlet {

 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String busId = request.getParameter("busId");
        String nofseat = request.getParameter("numofseat");
        
        long remseat;
        
        Session s = SessionFactoo.getSessionFactoo().openSession();
        Bus b = (Bus) s.get(Bus.class, Integer.parseInt(busId));
        if(b.getSeatno()>=Long.parseLong(nofseat)){
            request.setAttribute("total_price", b.getTprice()*Long.parseLong(nofseat));
            request.setAttribute("total_seat", Long.parseLong(nofseat));
            
            
            request.getRequestDispatcher("TicketApply.jsp").forward(request, response);
            
        
        }else{
           response.getWriter().write("Seat not available");
        }
        
        
        
        
    }

}
