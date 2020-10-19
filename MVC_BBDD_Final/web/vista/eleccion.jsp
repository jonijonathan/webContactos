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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fallo</title>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="row">
            <div class="col-l-2"></div>
            <img class="col-l-6" src ="../img/logoMediaNaranja.png" alt="logo"/>
            <div class="col-l-2"></div>
        </header>
        <main class ="row">
            <div class="col-l-2"></div>
            <div class="col-l-6">
                <%
                    Usuario p = (Usuario) session.getAttribute("userActual");
                    String ses = session.getId();
                %>
                <h1 class="centrado">Bienvenido</h1>
                <p class="centrado"><%= p.getNombre()%></p>
                <p class="centrado">ID Sesion:  <%= ses%></p>
                <form action="../controlador.jsp" method="POST">
                    <div class="row">
                        <h2 class="col-l-10, centrado" >Como quieres Entrar </h2>
                    </div>
                    <div class="row">
                        <select class="col-l-4"  name = "rol">
                            <option value="usuario">Usuario</option>
                            <option value="administrador">Administrador</option>
                        </select>
                        <div class="col-l-2"></div>
                        <input class="col-l-4" type="submit" value="EntrarConRol" name="EntrarConRol"/>
                    </div>
                    <div class="row">
                        <div class="col-l-6"></div>
                        <input  class="col-l-4" type="submit" value="Cerrar Session" name="cs"/>
                    </div>



                </form>
            </div>
            <div class="col-l-2"></div>
        </main>
        <footer class="row">
            <div class="col-l-10">
                Proyecto creado por Jonathan Zapico Garrido, en el ciclo de DAW
            </div>
        </footer>
    </body>
</html>