<%-- 
    Document   : addBus
    Created on : Aug 3, 2019, 4:21:51 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
<div class="container">
  <h2>Add New Bus </h2>
  <form action="AddBusController" method="post">
      
    <div class="form-group">
      <label >Bus Name:</label>
      <input type="text" class="form-control"  placeholder="Enter Bus Name" name="busname">
    </div>
      <div class="form-group">
      <label>From:</label>
      <input type="text" class="form-control" placeholder="Departure From" name="depfrom">
    </div>
      <div class="form-group">
      <label>Destination:</label>
      <input type="text" class="form-control" placeholder="Enter bus destination " name="destination">
    </div>
      <div class="form-group">
      <label>Departure Time:</label>
      <input type="text" class="form-control" placeholder="Enter bus destination " name="depr_time">
    </div>
      <div class="form-group">
      <label>Arival Time:</label>
      <input type="text" class="form-control"  placeholder="Enter bus destination " name="arival_time">
    </div>

      <div class="form-group">
      <label>Total Seat:</label>
      <input type="text" class="form-control"  placeholder="Enter totalseat " name="seatno">
    </div>
      <div class="form-group">
      <label>Ticket Price:</label>
      <input type="text" class="form-control"  placeholder="Enter " name="tprice">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
    </body>
</html>
