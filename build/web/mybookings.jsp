

<%@page import="bean.Bus"%>
<%@page import="bean.Passenger"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="controller.SessionFactoo"%>
<%@ include file="header2.jsp" %>
<html>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">

    <body>
 


<%

    HttpSession ses = (HttpSession) request.getSession();

    String user = (String) ses.getAttribute("app_user");
    SessionFactoo sf = new SessionFactoo();
    Session s = SessionFactoo.getSessionFactoo().openSession();

    List<Passenger> bokList = s.createSQLQuery("SELECT * FROM Passenger where user='" + user + "'").addEntity(Passenger.class).list();
     
    System.out.println(bokList.toString());


%>






<h2 class="title">  <span>My Booked Ticket ::</span></h2>
<table id="booking" class="table rs_shadow">
    <tr>
        <th>Serial</th>
        <th>Passenger Name</th>
        <th>Bus Name</th>
        <th>Journey Date</th>
        <th>Journey From</th>
        <th>Payment</th>
<!--        <th>Selection</th>-->
    </tr>


    <%  int i=0;      
        for (Passenger p : bokList) {
        i++;
    %>
    <tr>
        <td><%=i%></td>
        <td><%=p.getPname()%></td>
        <td><%=p.getBusname()%></td> 
        <td><%=p.getJdate()%></td>
        <td><%=p.getTfrom()%></td>
        <td><%=p.getTotalpayment()%></td>
    </tr>
    <%
        }
    %>


</table>

    </body>
    <script>
        
        $(document).ready(function() {
    $("#booking").DataTable();
} );
    </script>
</html>
<%@ include file="footer.jsp" %>


