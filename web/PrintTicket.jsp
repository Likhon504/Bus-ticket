<%@page import="bean.Passenger"%>
<%@page import="java.util.*" %>
<%@ include file="header.jsp" %>
<!--<link rel="stylesheet" href="css/seat.css"/>-->
<script type="text/javascript" src="js/bootstrap.js" />
<script type="text/javascript" src="js/jquery-3.1.1.min.js" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<script>

    function printDiv()
    {
        window.print();


        var divToPrint = document.getElementById('DivIdToPrint');

        var newWin = window.open('', 'Print-Window');

        newWin.document.open();

        newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');

        newWin.document.close();

        setTimeout(function () {
            newWin.close();
        }, 10);


    }





</script>
<%

    Passenger p = (Passenger) request.getAttribute("passenger");
    System.out.println(p);

%>
<!--<form id="form1">-->
<div id="DivIdToPrint" class="ticket_print_section" >
    <div class="rs_shadow single_ticket" style="background-image: url('images/ticket_bg.jpg');">
        <div class="ticket_header">
            <h2><%= p.getBusname()%> Bus Service</h2>
        </div>
        <div class="ticket_inner">
            <div class="customer_part">
                <h3>
                    <strong style="color: #269abc;font-size: 20px">Name of passenger:</strong>
                    <%= p.getPname()%>
                </h3>

                <div class="ticket_col_1">
                    <table>
                        <tr>
                            <td>
                                <h4><strong style="color: #269abc;font-size: 20px">Bus Name</strong>
                                    <span><%= p.getBusname()%> </span></h4>
                                <strong style="color: #269abc;font-size: 20px">From</strong>
                                <span ><%= p.getTfrom()%></span>
                                <strong style="color: #269abc;font-size: 20px">To</strong>
                                <span><%= p.getTto()%></span>
                            </td>
                            <td class="wd_100px text_center">
                                <strong style="color: #269abc;font-size: 18px">Coach</strong>
                                <span>AC</span>

                            </td>
                            <td class="wd_100px text_center">
                                <strong style="color: #269abc;font-size: 20px">Journey Date</strong>
                                <%= p.getJdate()%>
                            </td>
                            <td class="wd_100px text_center">
                                <strong style="color: #269abc;font-size: 20px">Time</strong>
                                <%= p.getJtime()%>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <!--                            <td>
                                                            <strong style="color: #269abc;font-size: 18px">Coach</strong>
                                                            <span>AC</span>
                                                        </td>-->
                            <td  class="wd_100px text_center">
                                <strong style="color: #269abc;font-size: 18px">Seat NO:</strong>
                                <%= p.getPseat()%>
                            </td>
                            <td  class="text_center">
                                <strong style="color: #269abc;font-size: 18px">Issue Date:</strong>
                                10/20/205
                            </td>
                            <td  class="wd_100px text_center">
                                <strong style="color: #269abc;font-size: 18px">Fare:</strong>
                                <%= p.getTotalpayment()%> Tk
                            </td>
                            <td width="90"  class="text_center">
                                <img class="qr_code" src="images/qr.png" alt="">
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="company_part">
                <h4>
                    <strong style="color: #269abc">::Name of passenger::</strong>
                    <%= p.getPname()%>
                </h4>
                <strong style="color: #269abc"> Bus Name:</strong>
                <span><%= p.getBusname()%></span>
                <strong style="color: #269abc"> Journey:</strong>
                <span><%= p.getTfrom()%> To <%= p.getTto()%></span>
                <table>
                    <tr>
                        <td>
                            <strong style="color: #269abc"> Seat No:</strong>
                            <%= p.getPseat()%>
                        </td>
                        <td>
                            <strong style="color: #269abc">       Date:</strong>
                            <%= p.getJdate()%>
                        </td>


                    </tr>
                    <tr>
                        <td>
                            <strong style="color: #269abc"> Time:</strong>
                            <%= p.getJtime()%>
                        </td>
                        <td>
                            <strong style="color: #269abc"> Fare:</strong>
                            <%= p.getTotalpayment()%>Tk
                        </td>

                        <td>
                            <strong style="color: #269abc">Issue Date</strong>

                        </td>

                        <td>
                        </td>
                    </tr>

                </table>
            </div>

            <div class="clearfix"></div>
        </div>
        <div class="ticet_footer">
            <span>Have a nice journey.</span>
        </div>

    </div>
</div>
<form action="Booking.jsp">
    <div class="col-xs-12 col-sm-12 text-center register_form">
        <div class="rs_btn_group pbutton">
            <button class="btn btn-default pull-left" onclick="printDiv()" id="btnPrint" >Print</button>
        </div>
    </div>
</form>
<!--    </form>-->
<%@ include file="footer.jsp" %>