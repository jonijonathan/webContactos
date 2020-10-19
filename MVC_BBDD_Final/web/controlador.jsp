<%-- 
    Document   : controlador
    Created on : 25 sept. 2020, 12:15:47
    Author     : jonathan
--%>

<%@page import="Modelo.Mail"%>
<%@page import="Modelo.ConexionEstatica"%>
<%@page import="Modelo.Usuario"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contolador</title>
    </head>
    <body>
        <%
            //--------------
            // vengo de index 
            if (request.getParameter("accionIndex") != null) {
                //ha pulsado en entrar
                if (request.getParameter("accionIndex").equals("entrar")) {
                    if (request.getParameter("user") != null) {
                        String user = request.getParameter("user");
                        String contra = request.getParameter("contra");
                            //loggear                           
                            Usuario p = ConexionEstatica.loggear(user, contra);
                            
                            if (p != null) {
                                session.setAttribute("userActual", p);                               
                                //aqui preguntar a donde lo mandamos
                                LinkedList rolesUser = ConexionEstatica.dimeRoles(user);
                                if (rolesUser.size() > 1) {
                                    response.sendRedirect("vista/eleccion.jsp");
                                } else {
                                    response.sendRedirect("vista/acierto.jsp");
                                }

                            } else {
                                response.sendRedirect("vista/fallo.jsp");
                            }           
                    }
                } else {
                    //ha pulsado en registrar
                    response.sendRedirect("vista/registrar.jsp");
                }
            }


            //--------
            //Vengo de acierto
            if (request.getParameter("cs") != null) {               
                session.removeAttribute("userActual");
                session.invalidate();
                response.sendRedirect("index.jsp");
            }
            

            

            //voy a vista de admin
            if (request.getParameter("EntrarConRol") != null) {
                String opcion = request.getParameter("rol") + "";
                if (opcion.equalsIgnoreCase("administrador")) {
                    response.sendRedirect("vista/admin.jsp");
                } else {
                    response.sendRedirect("vista/acierto.jsp");
                }
            }

            //olvivado contraseña
            if (request.getParameter("olvidado") != null) {
                response.sendRedirect("vista/olvContra.jsp");
            }
            

            
            //confirmar Olvidado       
            if (request.getParameter("confirmaOlvidado") != null) {
                //enviar correo       
                String para = request.getParameter("emailOlv");               
                Usuario p = ConexionEstatica.buscaEmail(para);
                if(p != null){
                    //un metodo que genere contraseña
                    String nuevaContra = "1234ABC";
                    p.setClave(nuevaContra);
                    ConexionEstatica.modificarContraseña(p);
                    //Enviar el correo
                    Mail email = new Mail();
                    //Falla al conectar
                    boolean resultado = email.enviarCorreo(nuevaContra, "Jonathan: Nueva Contraseña", para);
                                       
                    response.sendRedirect("vista/nuevaContra.jsp");
                }else{                
                    response.sendRedirect("vista/nuevaContra.jsp");
                }

            }
            
            //registrar
            if(request.getParameter("datosCompletos") != null){
                String nombre = request.getParameter("nombre") + "";
                String clave = request.getParameter("clave") + "";
                String email = request.getParameter("email") + "";
                Usuario u = new Usuario (email,nombre,clave);
                if(ConexionEstatica.addUsuario(u)){
                    response.sendRedirect("vista/registroOK.jsp");
                }else{
                    response.sendRedirect("vista/fallo.jsp");
                }
            }
            
            /*
            //editar mi perfil
            if(request.getParameter("editarMiPerfil") != null){
                response.sendRedirect("vista/editarMiPerfil.jsp");
            }
*           */

        %>

    </body>
</html>
