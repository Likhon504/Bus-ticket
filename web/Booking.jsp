<%@ include file="header.jsp" %>
<div class="signpage register_form">
    <form action="buslist.jsp" method="post">
        <div class="row">

            <div class="col-xs-12 col-sm-12">
                <center><h3>Fill Journey Details :: </h3></center>

                <div class="rs_form_box">

                    <center>
                        <label>From:</label>
                        <select name="fromLoc">
                            <option value="Tangail">Tangail	</option>
                            <option value="Dhaka">Dhaka	</option>
                            <option value="Mymonsing">Mymensingh</option>
                        </select>
                    </center>
                    <br>

                    <center>
                        <label>TO:</label>

                        <select name="toLoc">

                            <option value="Tangail">Tangail	</option>
                            <option value="Dhaka">Dhaka</option>
                            <option value="Mymonsing">Mymensing</option>

                        </select>
                    </center>

                    <br>
                    <center>
                        <label>Journey Date:</label>
                        <input type="Date" name="dep_date">
                    </center>
                    <br>

                    <div class="col-xs-12 col-sm-12 text-center">
                        <div class="rs_btn_group">
                            <button class="btn btn-default pull-left" name="submit" type="submit">Proceed</button>
                        </div>
                    </div>



                </div>

            </div>
        </div>
    </form>
</div>
<%@ include file="footer.jsp" %>