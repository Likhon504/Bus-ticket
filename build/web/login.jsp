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
                    <h1><a href="index.jsp">BusTicket</a></h1>
                </div>	
                <div class="w3top-nav-right">	
                    <ul>
                        <li><a href="index.jsp" class="active">Home</a></li>
                        <li><a href="#">About</a></li>  
                        <li><a href="signup.jsp">Sign Up</a></li> 
                        <li><a href="#">Gallery</a></li>
                        <li><a href="#">Blog</a></li> 
                        <li><a href="#">Contact</a></li>
                    </ul> 
                </div>	
                <div class="clear"></div>
            </div>	
            <div class="header-main">
                <h2>Login Now</h2>
                <div class="header-bottom">
                    <div class="header-right w3agile">
                        <div class="header-left-bottom agileinfo">
                            <form action="LoginController" method="post">
                                <div class="icon1">
                                    <input type="text" placeholder="Username" name="username"/>
                                </div>
                                <div class="icon1">
                                    <input type="password" placeholder="Password"  name="password"/>
                                </div>
                                <div class="login-check">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked="">Keep me logged in</label>
                                </div>
                                <div class="bottom">
                                    <input type="submit" value="Log in" />
                                </div>
                                <p><a href="#">Forgot Password?</a></p>
                            </form>	
                        </div>
                    </div>
                </div>
            </div>

        </div>	
        <!-- //main -->
        <!-- copyright -->
        <div class="copyright w3-agile">
            <p>© All rights reserved | Design by <a href="" target="_blank">Imty@z </a></p>
        </div>
        <!-- //copyright --> 
    </body>
</html>
