<%-- 
    Document   : registrar
    Created on : 16 oct. 2020, 9:56:35
    Author     : jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jsControlador.js" type="text/javascript"></script>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    </head>
    <body onload="validarRegistro()">
        <header class="row">
            <div class="col-l-2"></div>
            <img class="col-l-6" src ="../img/logoMediaNaranja.png" alt="logo"/>
            <div class="col-l-2"></div>
        </header>
        <main class ="row">
            <div class="col-l-3"></div>
            <div class="col-l-4">
                <form novalidate class="margenAbajo" id ="formularioRegistro" action="../controlador.jsp" method="POST" name="formRegistro">
                    <div class="row">                
                        <label class="col-l-5">Email</label>
                        <input  class="col-l-5" type ="email" value="" name ="email" id ="email" required/>
                        <span id ="arialErrorEmail" class="error" aria-live="polite"></span>
                    </div>
                    <div class="row">
                        <label class="col-l-5">Nombre</label>
                        <input  class="col-l-5" type ="text" value="" name ="nombre" id ="nombre" minlength="4" required/>
                        <span id ="arialErrorNombre" class="error" aria-live="polite"></span>
                    </div>
                    <div class="row">
                        <label class="col-l-5">Contraseña</label>
                        <input  class="col-l-5" type ="password" value="" name ="clave" id ="clave" minlength="3" required/>
                        <span id ="arialErrorClave" class="error" aria-live="polite"></span>
                    </div>
                    <!--reCathca de google-->
                    <div class="row">
                        <div class="g-recaptcha , col-l-10 " data-sitekey="6LeT8dgZAAAAACL0G6LHUkLwe6iCLcftssSVR5yB"></div>
                        <span>
                            <%
                                Object errorMessage = session.getAttribute("errorMessage");
                                if (errorMessage != null)
                                    out.print(errorMessage.toString());
                            %>
                        </span>
                    </div>
                    <div class="row">
                        <input class="col-l-10" name ="datosCompletos" type ="submit" value="Enviar" id ="enviar"/>
                    </div>
                </form>
                <form action="../index.jsp" method="POST">
                    <div class="row">
                        <input class="col-l-10"  type ="submit" value="Volver" name ="Volver"/>
                    </div>
                </form>
            </div>
            <div class="col-l-3"></div>
        </main>
        <footer class="row">
            <div class="col-l-10">
                Proyecto creado por Jonathan Zapico Garrido, en el ciclo de DAW
            </div>
        </footer>
    </body>
</html>
