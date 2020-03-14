<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="bean.BusWithDate"%>
<%@page import="org.hibernate.service.ServiceRegistry"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.List"%>
<%@page import="bean.Bus"%>
<%@page import="org.hibernate.Session"%>
<%@page import="controller.SessionFactoo"%>
<%@ include file="header.jsp" %>



<div>

    <%
        String frmLoc = request.getParameter("fromLoc");
        String toLoc = request.getParameter("toLoc");
        String date = request.getParameter("dep_date");

        System.err.println("From : " + frmLoc + ", To : " + toLoc);

        SessionFactoo sf = new SessionFactoo();

        Session s = SessionFactoo.getSessionFactoo().openSession();

        List<Bus> busList = s.createSQLQuery("SELECT * FROM bus where depfrom='" + frmLoc + "' and destination='" + toLoc + "'").addEntity(Bus.class).list();

        List<BusWithDate> busDateList = s.createSQLQuery("SELECT * FROM BusWithDate where date = '"+date+"'").addEntity(BusWithDate.class).list();
        
        List<Bus> dBusList = new ArrayList<Bus>();
       
        if(busDateList.size()==0){
            
            for(Bus b : busList){
                
                BusWithDate bwd = new BusWithDate();
                bwd.setDate(date);
                bwd.setBus_id(b.getBus_id());
                bwd.setSeat("");
               
                Transaction t = s.beginTransaction();
                s.save(bwd);
                t.commit();
                
            }
            
        }else{
            
            for(BusWithDate bwd : busDateList)
            {
                int id =  bwd.getBus_id();
                Bus b = (Bus) s.get(Bus.class, id);
                
                Bus nb = new Bus();
                //System.out.println("------> : "+bwd.getId());
                nb.setBus_id(bwd.getId());
                nb.setBusname(b.getBusname());
                nb.setDepfrom(b.getDepfrom());
                nb.setDepr_time(b.getDepr_time());
                nb.setTprice(b.getTprice());
                
                int n = 0;
                String ms  = bwd.getSeat();
                String[] sets = ms.split(",");
                if(ms.length()==0){
                    n = 0;
                }else{
                    n = sets.length;
                }
                
                nb.setSeatno(b.getSeatno()-n);
                dBusList.add(nb);
                
            }
            
        }
        
        
        System.out.println(busList.toString());
         System.out.println(busDateList.toString());
        

         //Bus bbBus = (Bus) new Bus();
    %>


</div>


    
    
    <h2 class="title">  <span>Bus List For::  <%= frmLoc%> <</span> to ><span>  <%= toLoc%> :: Journey Date:: <%= date%></span> </h2>
    <br>
    
    <table class="table rs_shadow">
        <tr>
            <th>Serial</th>
            <th>Bus Name</th>
            <th>Departure Time</th>
            <th>Available Seat</th>
<!--            <th>Seat You Want</th>-->
            <th>Ticket Price</th>
            <th>Selection</th>
        </tr>

        <%
            for(int i=0;i<dBusList.size(); i++)
            {
                Bus b = dBusList.get(i);
                %>
                
                <tr>
                    <td><%=(i+1)%></td>
                    <td><%=b.getBusname() %></td>
                    <td><%=b.getDepr_time()%></td>
                    <td><%=b.getSeatno()%></td>
                    <td><%=b.getTprice()%></td>
                    
                    <td>
                        <form class="ticket_selecting_form" action="SelectSeat.jsp" method="get">
                        <input type="hidden" value="<%=b.getBus_id()%>" name="id"/>
                        <input type="submit" value="Find My Tickets">
                        </form>
                    </td>
                </tr>
                
                <%
                
            }
            
            %>

    </table>

            
            
            
            
            
            
<%@ include file="footer.jsp" %>

            
              