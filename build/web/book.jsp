<%-- 
    Document   : book
    Created on : Aug 3, 2019, 9:05:41 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
    <head>
        <title>BusTicket</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/book_style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/carousel.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/owl.carousel.js" type="text/javascript"></script>
    </head>
    <body>
        <!-- Start Header -->
        <div class="header">
            <div class="header-logo-nav">
                <div class="navbar navbar-inverse navbar-static-top nav-bg" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="logo"> <a class="navbar-brand" href="index.html"><img src="" alt="" /></a></div>
                            <div class="clear"></div>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class=" menu nav navbar-nav">
                                <li ><a href="index.jsp">Home</a></li>
                                <li ><a href="about.html">About</a></li>
                                <li><a href="mybookings.html">My Booking</a></li>
                                <li><a href="print.html">Print Ticket</a></li>
                                <li><a href="print.html">Payment</a></li>
                                <li><a href="contact.html">Contact Us</a></li>
                                <li><a href="LogoutController">LogOut</a></li>

                            </ul>
                        </div><!--/.nav-collapse -->
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!-- End Header -->

        <!-- Start Main Content -->
    <pub>
        <font face="Impact" font size="7" color="yellow">Fill Journey Details</font></a>
</pub> 
<form action="buslist.jsp" method="post">

    <div class="transbox">
        <style>
            .transbox{
                position:absolute;
                top:230px;
                left:470px;

                border:1px solid black;
                background:skyblue;
                width:400px;
                height:250px;
                border-radius:15px;
            }

            pub{

                text-align:center;	

                background-color: blue;

                position:absolute;
                height: 60px;
                width: 480px;
                top:150px;
                left:430px;
            }
        </style>
        <p><center><br>
            <font face="Franklin Gothic" font size="5" color="black">From &#160;:&#160;&#160;</font>
            <select name="fromLoc">

                <option value="Tangail">Tangail	</option>
                <option value="Dhaka">	Dhaka	</option>
                <option value="Mymonsing">Mymonsing</option>
            </select>
            </p></center>
        <br>

        <p><center>
            <font face="Franklin Gothic" font size="5" color="black">To&#160;&#160; &#160;:&#160;&#160;&#160;&#160;&#160;</font>
            <select name="toLoc">

                <option value="Tangail">Tangail	</option>
                <option value="Dhaka">Dhaka</option>
                <option value="Mymonsing">Mymonsing</option>

            </select>
            </p></center>

        <br>
        <p><center>
            <font face="Franklin Gothic" font size="5" color="black">Date &#160;:&#160;&#160;&#160;&#160;</font>
            <input type="date" name="dep_date">
            </p></center>
        <p><center>
            <p></p> 

            <br><br>
            <p><center>
                <p></p> 
                <input type="submit" value="proceed"><br><br><br>
                </div>
                </form>
                </p></center>


            <br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br>
            <marquee behavior="alternate" id="mov"><font face='Cursive' font size='4' color='blue'>You can book Bus Tickets on our Website upto 30 days in advance.......</font></marquee>
            <br><br>  <!-- End Main Content -->

            <!-- Start Footer -->
            <span class="footer-arrow"></span>
            <div class="footer">	  
                <div class="wrap">	      
                    <div class="row">
                        <div class="col-lg-6">
                            <h2>Online Bus Booking</h2>
                            <p>Online Bus  is a registerd online bus booking website by Imty@z.  </p>
                            <ul class="links">
                                <li><a href="about.html">About</a> /</li>
                                <li><a href="#">Term of Services</a> </li>

                            </ul> 
                        </div>
                        <div class="col-lg-6">

                            <div class="products-list">
                                <ul>

                                </ul>
                                <ul>	                         

                                </ul>
                                <div class="clear"></div>
                            </div>
                            <div class="subscribe">
                                <form>
                                    <input type="text" placeholder="youremail@domain.com" />
                                    <input type="submit" value="Subscribe" />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="wrap">
                    <div class="copy-right">
                        <p>Copyright Imty@z &copy; 2019  all right reserved. </p>
                    </div>
                    <div class="social-icons">
                        <ul>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <!-- End Footer -->
            </body>
            </html>




