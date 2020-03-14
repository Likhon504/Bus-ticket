<%-- 
    Document   : signup
    Created on : Aug 1, 2019, 9:43:25 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SignUp Form</title>
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
		<h1>SignUp Here</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="SignUpController" method="post">
					<input class="text" type="text" name="username" placeholder="Username" required="">
					<input class="text email" type="email" name="email" placeholder="Email" required="">
					<input class="text" type="password" name="password" placeholder="Password" required="">
					<input class="text w3lpass" type="password" name="password" placeholder="Confirm Password" required="">
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="SIGNUP">
				</form>
				<p>Have an Account?? <a href="login.jsp"> Login Now!</a></p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
                    <p>© 2018 Colorlib Signup Form. All rights reserved | Design by <a href="" target="_blank"></a></p>
		</div>
		<!-- //copyright -->
	</div>
        
	<!-- //main -->
       

</body>
</html>
