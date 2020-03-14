<%@ include file="header.jsp" %>

<form class="ticket_selecting_form" action="">
    <h2 class="title">  <span>Train Route Showing For ::</span>  to  <span>:: Journey Date -</span> </h2>
    <table class="table rs_shadow">
        <tr>
            <th>Serial</th>
            <th>Train No</th>
            <th>Train Name</th>
            <th>Departure Time</th>
            <th>Payment</th>
            <th>Number Of Seat</th>
            <th>Selection</th>
        </tr>

        <tr>
            <td>a</td>
            <td>b</td>
            <td>c</td>
            <td>d</td>
            <td>e</td>
            <td>f</td>
            <td>
                <a href="javascript:;" class="btn btn-success rs_search_ticket" data-date="" data-destination="">Search Ticket</a>
            </td>
        </tr>

    </table>
</form>
<div id="rs_ticket_result">

</div>
<%@ include file='footer.jsp' %>