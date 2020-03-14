<%-- 
    Document   : signup
    Created on : Aug 1, 2019, 9:43:25 PM
    Author     : User
--%>

<%@page import="bean.Bus"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Book A Ticket </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom Theme files -->
        <link href="css/regis_style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //Custom Theme files -->
        <!-- web font -->
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <!-- //web font -->
<!-- Bootstrap CSS -->
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/assets/owl.carousel.min.css"/>
        <link rel="stylesheet" href="css/assets/owl.theme.default.css"/>
        <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
  
    <div class="header">
            <div class="">
                <div class="header_content ">
                  Bus Ticketing System
                </div>
                <div class="main_nav">
                    <ul class="nav nav-pills pull-left">

                       <li ><a href="index.jsp">Home</a></li>
                                <li ><a href="about.html">About</a></li>
                                <li><a href="mybookings.html">My Booking</a></li>
                                <li><a href="print.html">Print Ticket</a></li>
                                <li><a href="print.html">Payment</a></li>
                                <li><a href="contact.html">Contact Us</a></li>
                                <li><a href="LogoutController">LogOut</a></li>


                    </ul>
                </div>
            </div>
        </div>
        <!-- main -->
        
        <div class="main-w3layouts wrapper">
            <h1>Grab Your Seat</h1>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <form action="Success.jsp">
                        <input class="text" type="text" name="pname" placeholder="Passanger Name" required="">
                        <input class="text" type="text" name="paddress" placeholder="Passanger Adress" required="">
                        <input class="text" type="text" name="pmobile" placeholder="Mobile No" required="">
<!--                        <input class="text" type="text" name="pmobile" placeholder="" required="">
                        <input class="text" type="text" name="pmobile" placeholder="" required="">-->
                        <%
                           Long vall = (Long) request.getAttribute("total_seat");
                        %>
                        <input class="text" type="text" name="noofseat" value="<%=vall%>" disabled>
                        <%
                           Long val = (Long) request.getAttribute("total_price");
                        %>
                        <input class="text" type="text" name="totalpayment"  required="" value="<%=val%>" disabled>
<!--                        <% 
                            Bus b = new Bus();
                        %>
                        <input type="hidden" value="<%=b.getBus_id()%>" name="busId"/>-->
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
            <!-- copyright -->
            <div class="colorlibcopy-agile">
                <p>© 2018 Colorlib Signup Form. All rights reserved | Design by <a href="https://colorlib.com/" target="_blank">Colorlib</a></p>
            </div>
            <!-- //copyright -->
        </div>
        <!-- //main -->
    </body>
</html>
