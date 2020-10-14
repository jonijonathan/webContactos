<%-- 
    Document   : acierto
    Created on : 25 sept. 2020, 13:12:01
    Author     : jonathan
--%>

<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acierto</title>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Bienvenido</h1>
        <%
            Usuario p = (Usuario) session.getAttribute("userActual");   
            String ses = session.getId();       
        %>

    </body>
</html>
