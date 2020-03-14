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
<%@ include file="headerAdmin.jsp" %>



<div>

    <%
        
        SessionFactoo sf = new SessionFactoo();

        Session s = SessionFactoo.getSessionFactoo().openSession();
        
        List<Bus> busList = s.createSQLQuery("SELECT * FROM bus").addEntity(Bus.class).list();
        
        System.out.println(busList.toString());
    %>


</div>


    
    
    <h2 class="title">  <span>All Bus List</span> </h2>
    <br>
    
    <table class="table rs_shadow">
        <tr>
            <th>Serial:</th>
            <th>Bus Name:</th>
            <th>Departure From:</th>
            <th>Destination:</th>
            <th>Departure Time:</th>
            <th>Arrival Time:</th>
            <th>Total Seat:</th>
            <th>Ticket Price</th>
            
        </tr>

        <%
            for(int i=0;i<busList.size(); i++)
            {
                Bus b = busList.get(i);
               System.out.println(i);
                %>
                
                <tr>
                    <td><%=(i+1)%></td>
                    <td><%=b.getBusname()%></td>
                    <td><%=b.getDepfrom() %></td>
                    <td><%=b.getDestination() %></td>
                    <td><%=b.getDepr_time()%></td>
                    <td><%=b.getArival_time()%></td>
                    <td><%=b.getSeatno()%></td>
                    <td><%=b.getTprice()%></td>
                </tr>
              <%
                
            }
            
            %>  
            

    </table>

            
            
            
            
            
            
<%@ include file="footer.jsp" %>

            
              