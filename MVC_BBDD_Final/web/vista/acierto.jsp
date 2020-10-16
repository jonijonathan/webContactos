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
        <title>Bienvenido</title>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            Usuario p = (Usuario) session.getAttribute("userActual");
            String ses = session.getId();  
        %>
        <header class="row">

        </header>
        <main>
            <section  class ="row">
                <img class="col-l-2" src="<%= p.getFoto()%>" width="" >
                <div class="col-l-6">
                    <div class="row">
                        <h1 class="centrado">Bienvenide</h1>
                        <p class="centrado"><%= p.getNombre()%></p>
                    </div>
                    <div class="row">
                        <nav>
                            <ul class="centrado" display: inline">
                                <li class="col-l-2" >Editar perfil</li>
                                <li class="col-l-2">Enviar mensaje</li>
                                <li class="col-l-2">Ver mensajes</li>
                                <li class="col-l-2">Cerrar Session</li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-l-2">

                </div>
            </section>

        </main>       


        <footer class="row">
            <div class="col-l-10">
                Proyecto creado por Jonathan Zapico Garrido, en el ciclo de DAW
            </div>
        </footer>
    </body>
</html>
