<%@page import="bean.Bus"%>
<%@page import="bean.BusWithDate"%>
<%@page import="org.hibernate.Session"%>
<%@page import="controller.SessionFactoo"%>
<%@page import="controller.SeatController"%>
<%@ include file="header.jsp" %>
<div class="signpage">
    
    
    
    <%
        String seat = (String) SeatController.seatData;
        System.out.println("---------------> : "+seat);
        

        Session ss = SessionFactoo.getSessionFactoo().openSession();
        BusWithDate bwd = (BusWithDate) ss.get(BusWithDate.class,Integer.parseInt(SeatController.busId));
        System.out.println("--------::::"+bwd.getDate());
        

        Bus bus = (Bus) ss.get(Bus.class, bwd.getBus_id());
        String date = bwd.getDate();
        String[] splt = seat.split(",");
        double tk = splt.length * bus.getTprice();
        
        
        %>
    
    
    
    
    
    
    
    <div class="alert alert-info"><p></p></div>
    <form class="register_form" action="PassengerController" method="post">

        <input type="hidden" name="iid" value="<%=bwd.getId()%>" />
        <div class="row">
            <div class="col-xs-12 col-sm-6 ">
                <div class="rs_form_box">
                    <h3 class="form_section_title">
                        Fill Passenger Details ::
                    </h3>
                    <div class="input-group">
                        <label>Passenger Name:</label>
                        <input type="text" name="pname" class="form-controller">
                    </div>
                    
                    <div class="input-group">
                        <label>Passenger Address</label>
                        <input type="text" name="paddress" class="form-controller">
                    </div>
                    <div class="input-group">
                        <label>Mobile No:</label>
                        <input type="text" name="pmobile" class="form-controller">
                    </div>
                    <div class="input-group">
                        <label>Bus Name:</label>
                        <input type="text" name="busname" class="form-controller" value="<%=bus.getBusname()%>" readonly>
                    </div>
                    <div class="input-group">
                        <label>Travel From:</label>
                        <input type="text" name="tfrom" class="form-controller" value="<%=bus.getDepfrom()%>" readonly>
                    </div>
                    <div class="input-group">
                        <label>Travel To</label>
                        <input type="text" name="tto" class="form-controller" value="<%=bus.getDestination()%>" readonly>
                    </div>
                    <div class="input-group">
                        <label>Seat No:</label>
                        <input type="text" name="pseat" class="form-controller" value="<%=seat%>" readonly>
                    </div>
                    <div class="input-group">
                        <label>Total Payment:</label>
                        <input type="text" name="totalpayment" class="form-controller" value="<%=tk%>" readonly>
                    </div>
                    <div class="input-group">
                        <label>Journey Date:</label>
                        <input type="text" name="jdate" class="form-controller" value="<%=date%>" readonly>
                    </div>
                    <div class="input-group">
                        <label>Time:</label>
                        <input type="text" name="jtime" class="form-controller" value="<%=bus.getDepr_time()%>" readonly>
                    </div>
                </div>

            </div>
            <div class="col-xs-12 col-sm-12 text-center">
                <div class="rs_btn_group">
                    <input type="hidden" value="<%=bwd.getBus_id()%>" name="bid"/>
                    <button class="btn btn-default pull-left" name="createTrain" value="submit" type="submit">Submit</button>
                </div>
            </div>
        </div>
    </form>
</div>
<%@ include file="footer.jsp" %>