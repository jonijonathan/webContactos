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
            <div class="col-l-2"></div>
            <img class="col-l-6" src ="../img/logoMediaNaranja.png" alt="logo"/>
            <div class="col-l-2"></div>
        </header>
        <main>
            <!--Parte del usuario -->
            <section  class ="row">
                <img class="col-l-2" src="<%= p.getFoto()%>" width="" >
                <div class="col-l-6">
                    <div class="row">
                        <h1 class="centrado">Bienvenide</h1>
                        <p class="centrado"><%= p.getNombre()%></p>
                    </div>
                    <div class="row">
                        <nav>
                            <form name ="nav" action="../controlador.jsp" method="POST">
                                <div class="row">
                                    <input class="col-l-5" type="submit" name="EditarMiPerfil" value="Editar mi perfil">
                                    <input class="col-l-5" type="submit" name="envMensjaes" value="Enviar mensaje">
                                </div>
                                <div class="row">
                                    <input class="col-l-5" type="submit" name="verMensajes" value="Ver mensajes">
                                    <input class="col-l-5" type="submit" name="cs" value="Cerrar Session">
                                </div>
                            </form>
                        </nav>
                    </div>
                </div>
                <div class="col-l-2"></div>
            </section>
        <!--Parte de cargar a los demas usuarios -->
        <section></section>
        </main>       
        <footer class="row">
            <div class="col-l-10">
                Proyecto creado por Jonathan Zapico Garrido, en el ciclo de DAW
            </div>
        </footer>
    </body>
</html>
