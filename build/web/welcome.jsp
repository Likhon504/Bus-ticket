<%-- 
    Document   : login
    Created on : Aug 1, 2019, 9:41:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bus Ticket</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%@include file="/CommonInclude.jsp" %> 
    </head>
    <body>
        <!-- main -->

        <div class="agileits-main"> 
            <div class="w3top-nav">	
                <div class="w3top-nav-left">	
                    <h1><a href="index.html">BusTicket</a></h1>
                </div>	
                <div class="w3top-nav-right">	
                    <ul>
                        <li><a href="index.jsp" class="active">Home</a></li>
                        <li><a href="book.jsp">Booking</a></li> 
                        <li><a href="#">About</a></li> 
                        <li><a href="#">Gallery</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="LogoutController">LogOut</a></li> 
                        
                    </ul> 
                </div>	
                <div class="clear"></div>
            </div>
            <div class="container">  
                <div class="jumbotron">
                    <div class="row">
                        <div class="col-sm-3">
                        </div>
                        <div class="mid">
                            <div class="col-sm-6">
                                <center><h3>Hello</h3>
                                    <p><a href="book.jsp">Book Your Ticket</a></p>
                                </center>
                            </div>
                        </div>
                        <div class="col-sm-3">
                        </div>
                    </div>
                </div>
                <div class="logout">
                    <form action="LogoutController" method="get">
                        <input type="submit" value="Logout">
                    </form>
                </div>
            </div>
        </div>    
        <!-- //main -->
        <!-- copyright -->
        <div class="copyright w3-agile" style="text-align: center">
            <p>©All rights reserved | Design by <a  target="_blank">Imty@z</a></p>
        </div>

        <!-- //copyright --> 
    </body>
</html>
