<%-- 
    Document   : index.jsp
    Created on : 25 sept. 2020, 12:13:05
    Author     : jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loggig</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <script src="js/jsControlador.js" type="text/javascript"></script>
    </head>
    <body onload="validarLoggin()">
        <header class="row">
            <div class="col-l-2"></div>
            <img class="col-l-6" src ="img/logoMediaNaranja.png" alt="logo"/>
            <div class="col-l-2"></div>
        </header>
        <main class ="row">
            <div class="col-l-2"></div>
            <div class="col-l-6">
                <form novalidate="" id="formularioLogging" class="margenAbajo" action="controlador.jsp" method="POST">
                    <div class="row">
                        <label class="col-l-5">Email</label>
                        <input  class="col-l-5" id ="email" type ="email" value="" name ="user" required/>
                        <span id ="arialErrorEmail" class="error" aria-live="polite"></span>
                    </div> 
                    <div class="row">
                        <label class="col-l-5">Contraseña:</label>
                        <input  class="col-l-5" id="clave" type ="password" value="" name ="contra" required/>
                        <span id ="arialErrorClave" class="error" aria-live="polite"></span>
                    </div>   
                    <div class="row">
                        <input  class="col-l-10" type ="submit" value="entrar" name ="accionIndex"/>
                    </div>
                </form>
                <form class="margenAbajo" action="controlador.jsp">
                    <div class="row">
                        <input class="col-l-10" type ="submit" value="registrar" name ="accionIndex"/>
                    </div>
                </form>

                <form action="controlador.jsp" method="POST">
                    <div class="row">
                        <input class="col-l-10" type ="submit" value="He olvidado mi contraseña" name ="olvidado"/>
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
