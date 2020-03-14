<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.BusWithDate"%>
<%@page import="org.hibernate.Session"%>
<%@page import="controller.SessionFactoo"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">


        <!-- Bootstrap CSS -->
        <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
        <link rel="stylesheet" href="css/main.css"/>
        <!-- -->
        <link rel="stylesheet" href="css/seat.css"/>
        <script type="text/javascript" src="js/bootstrap.js" />
        <script type="text/javascript" src="js/jquery-3.1.1.min.js" />

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            
        </style>
        <script>

            $(document).ready(function () {
                //alert("hi");
            });

            function confirm()
            {
                bok_seat = "";
                for (i = 1; i <= 40; i++) {

                    if ($("#s" + i).prop("checked")) {
                        bok_seat += i + ",";
                    }
                    //alert("Value : "+ $("#s"+i).prop("checked") );
                }
                //alert(bok_seat);


                $.post("SeatController",
                        {
                            bok_seat: bok_seat,
                            busid: $("#busid").val()
                        }, function (data, status) {
                    window.location = 'ApplyTicket.jsp';
                });

                // $.redirect('ApplyTicket.jsp', {'arg1': 'value1', 'arg2': 'value2'});


            }



        </script>


    </head>

    <body>
        <%
            int busid = Integer.parseInt(request.getParameter("id"));

            System.out.println("-----------> : " + busid);

            SessionFactoo sf = new SessionFactoo();
            Session s = SessionFactoo.getSessionFactoo().openSession();
            BusWithDate bwd = (BusWithDate) s.get(BusWithDate.class, busid);

            System.out.println("-----------> : " + bwd.toString());

            List<Integer> bsets = new ArrayList<Integer>();

            String ms = bwd.getSeat();
            if (ms.length() != 0) {
                String[] sets = ms.split(",");
                for (String ss : sets) {
                    bsets.add(Integer.parseInt(ss));
                }
            }

            System.err.println(bsets);


        %>

        <input type="hidden" value="<%=busid%>" id="busid" >

        <div class="header">
            <div class="container">
                <div class="header_content ">
                    Bus Ticketing System
                </div>
                <!--                            <div class="main_nav">
                                                <ul class="nav nav-pills pull-left">
                
                                                    <li ><a href="index.jsp">Home</a></li>
                                                    <li ><a href="about.html">About</a></li>
                                                    <li><a href="mybookings.html">My Booking</a></li>
                                                    <li><a href="print.html">Print Ticket</a></li>
                                                    <li><a href="print.html">Payment</a></li>
                                                    <li><a href="contact.html">Contact Us</a></li>
                                                    <li><a href="LogoutController">LogOut</a></li>
                
                
                                                </ul>
                                            </div>-->
            </div>
        </div>





        <section class="main_contents">
            <div class="container">
                <div class="main_contents_inner" >
                    <!--                    <form class="register_form form_login" >-->
                    <div class="plane">

                        <h1 style="text-align: center">Please Select Your Seat::</h1>

                        <div class="exit exit--front fuselage">

                        </div>
                        <ol class="cabin fuselage">
                            <li class="row row--1">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox"<% if (bsets.contains(1)) {%>disabled<% }%>id="s1" />
                                        <label for="s1">1A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox"<% if (bsets.contains(2)) {%>disabled<% }%> id="s2" />
                                        <label for="s2">1B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(3)) {%>disabled<% }%> id="s3" />
                                        <label for="s3">1C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(4)) {%>disabled<% }%> id="s4" />
                                        <label for="s4">1D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--2">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(5)) {%>disabled<% }%> id="s5" />
                                        <label for="s5">2A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(6)) {%>disabled<% }%> id="s6" />
                                        <label for="s6">2B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(7)) {%>disabled<% }%> id="s7" />
                                        <label for="s7">2C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(8)) {%>disabled<% }%> id="s8" />
                                        <label for="s8">2D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--3">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(9)) {%>disabled<% }%> id="s9" />
                                        <label for="s9">3A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(10)) {%>disabled<% }%> id="s10" />
                                        <label for="s10">3B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(11)) {%>disabled<% }%> id="s11" />
                                        <label for="s11">3C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(12)) {%>disabled<% }%> id="s12" />
                                        <label for="s12">3D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--4">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(13)) {%>disabled<% }%> id="s13" />
                                        <label for="s13">4A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(14)) {%>disabled<% }%> id="s14" />
                                        <label for="s14">4B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox"<% if (bsets.contains(15)) {%>disabled<% }%> id="s15" />
                                        <label for="s15">4C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(16)) {%>disabled<% }%> id="s16" />
                                        <label for="s16">4D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--5">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(17)) {%>disabled<% }%> id="s17" />
                                        <label for="s17">5A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(18)) {%>disabled<% }%> id="s18" />
                                        <label for="s18">5B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(19)) {%>disabled<% }%> id="s19" />
                                        <label for="s19">5C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(20)) {%>disabled<% }%> id="s20" />
                                        <label for="s20">5D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--6">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox"  <% if (bsets.contains(21)) {%>disabled<% }%> id="s21" />
                                        <label for="s21">6A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(22)) {%>disabled<% }%> id="s22" />
                                        <label for="s22">6B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(23)) {%>disabled<% }%> id="s23" />
                                        <label for="s23">6C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox"  <% if (bsets.contains(24)) {%>disabled<% }%> id="s24" />
                                        <label for="s24">6D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--7">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(25)) {%>disabled<% }%> id="s25" />
                                        <label for="s25">7A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(26)) {%>disabled<% }%> id="s26" />
                                        <label for="s26">7B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(27)) {%>disabled<% }%> id="s27" />
                                        <label for="s27">7C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(28)) {%>disabled<% }%> id="s28" />
                                        <label for="s28">7D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--8">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(29)) {%>disabled<% }%>  id="s29" />
                                        <label for="s29">8A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox"  <% if (bsets.contains(30)) {%>disabled<% }%>id="s30" />
                                        <label for="s30">8B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox"<% if (bsets.contains(31)) {%>disabled<% }%> id="s31" />
                                        <label for="s31">8C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(32)) {%>disabled<% }%>id="s32" />
                                        <label for="s32">8D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--9">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(33)) {%>disabled<% }%> id="s33" />
                                        <label for="s33">9A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(34)) {%>disabled<% }%> id="s34" />
                                        <label for="s34">9B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(35)) {%>disabled<% }%> id="s35" />
                                        <label for="s35">9C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(36)) {%>disabled<% }%> id="s36" />
                                        <label for="s36">9D</label>
                                    </li>
                                </ol>
                            </li>
                            <li class="row row--10">
                                <ol class="seats" type="A">
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(37)) {%>disabled<% }%> id="s37" />
                                        <label for="s37">10A</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(38)) {%>disabled<% }%> id="s38" />
                                        <label for="s38">10B</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(39)) {%>disabled<% }%> id="s39" />
                                        <label for="s39">10C</label>
                                    </li>
                                    <li class="seat">
                                        <input type="checkbox" <% if (bsets.contains(40)) {%>disabled<% }%> id="s40" />
                                        <label for="s40">10D</label>
                                    </li>
                                </ol>
                            </li>
                        </ol>

                    </div>
                    <div class="col-xs-12 col-sm-12 text-center sbutton">
                        <div class="rs_btn_group ">
                            <button class="btn btn-default" style="background:  #336633;color: #fff;border-radius: 0;padding: 5px 34px;display: inline-block;line-height: 34px;"  onclick="confirm()" name="seatconfirm" value="submit" type="submit">Confirm</button>
                        </div>
                    </div>
                    <!--                    </form>-->
                </div>
            </div>
        </section>
        <footer class="footer_section " >
            <div class="container" style="text-align:center">
                <div class="footer_inner" style="text-align: center">
                    Developed by ::<br>
                    ............. . . . .   Imty@z . . . . .................. 
                </div>
            </div>
        </footer>

    </body>
</html>
