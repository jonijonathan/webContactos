<%-- 
    Document   : nuevaContra
    Created on : 30 sept. 2020, 10:46:22
    Author     : jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <h1 class="centrado">Se ha enviado una contraseña nueva a tu correo</h1>
                <div class="row">
                    <div class="col-l-3"></div>
                    <div class="col-l-4">
                        <form action="..\index.jsp" method="POST">
                            <div class="row">
                                <input class="col-l-10" type="submit" value="volver"/>
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
