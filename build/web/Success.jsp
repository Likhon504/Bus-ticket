<%@page import="org.hibernate.service.ServiceRegistry"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.List"%>
<%@page import="bean.Bus"%>
<%@page import="org.hibernate.Session"%>
<%@page import="controller.SessionFactoo"%>
<%@ include file="header.jsp" %>

<div class="container">
    <div class="juborton">
        <center>
        <h1>Your Booking Submitted Successfully</h1>
        <h2>Have a safe Journey</h2>
            </center>
    </div>
</div>

<div id="rs_ticket_result">

</div>
<%@ include file='footer.jsp' %>