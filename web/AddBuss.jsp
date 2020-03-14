<%@ include file="headerAdmin.jsp" %>
<div class="signpage">
    <div class="alert alert-info"><p></p></div>
    <form class="register_form" action="AddBusController" method="post">

        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3">
                <div class="rs_form_box">
                    <h3 class="form_section_title">
                        Bus Informations
                    </h3>
                    <div class="input-group">
                        <label>Bus Name:</label>
                        <input type="text" name="busname" class="form-controller">
                    </div>
                    
                    <div class="input-group">
                        <label>Departure From:</label>
                        <input type="text" name="depfrom" class="form-controller">
                    </div>
                    <div class="input-group">
                        <label>Destination:</label>
                        <input type="text" name="destination" class="form-controller">
                    </div>
                    <div class="input-group">
                        <label>Departure Time:</label>
                        <input type="text" name="depr_time" class="form-controller">
                    </div>
                    <div class="input-group">
                        <label>Arival Time:</label>
                        <input type="text" name="arival_time" class="form-controller">
                    </div>
                    <div class="input-group">
                        <label>Total Seat:</label>
                        <input type="text" name="seatno" class="form-controller">
                    </div>
                    <div class="input-group">
                        <label>Ticket Price:</label>
                        <input type="text" name="tprice" class="form-controller">
                    </div>
                </div>

            </div>
            <div class="col-xs-12 col-sm-12 text-center">
                <div class="rs_btn_group">
                    <button class="btn btn-default pull-left" name="createTrain" value="submit" type="submit">Save</button>
                </div>
            </div>
        </div>
    </form>
</div>
<%@ include file="footer.jsp" %>