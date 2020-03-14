<%-- 
    Document   : logout
    Created on : Aug 2, 2019, 8:27:58 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged out</title>
    </head>
    <body>
        <%
            session.removeAttribute("name");
        %>
 
        <a href="index.jsp"></a>
    </body>
</html>
