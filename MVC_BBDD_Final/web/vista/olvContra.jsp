<%-- 
    Document   : olvidadoContra
    Created on : 29 sept. 2020, 17:33:30
    Author     : jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Olvidado Contraseña</title>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="row">

        </header>
        <main class ="row">
        <div class="col-l-2"></div>
        <div class="col-l-6">
            <h1 class="centrado" >Introduce tu correo</h1>
            <p class="centrado">Se enviara una contraseña nueva a tu correo</p>
            <form class="margenAbajo" action="../controlador.jsp" method="POST">
                <div class="row">
                    <input class="col-l-4" type="email" name ="emailOlv" placeholder="Introduce email"/>
                    <div class="col-l-2"></div> 
                    <input class="col-l-4" type="submit" name ="confirmaOlvidado" value ="confirmar"/> 
                </div>
            </form> 
            <div class="row">
                <div class="col-l-3"></div> 
                <div class="col-l-4">
                    <form action="../index.jsp" method="POST">
                        <div class="row">
                            <input class="col-l-10" type="submit" name ="cancelarOlvidado" value ="cancelar"/> 
                        </div>
                    </form>
                </div>
                <div class="col-l-3"></div> 
            </div>
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