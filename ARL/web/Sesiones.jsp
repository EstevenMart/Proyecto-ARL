<%-- 
    Document   : Sesiones
    Created on : 12/08/2021, 10:01:11 AM
    Author     : emart
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
    response.setDateHeader("Expires", 0);
%>
<%

    HttpSession buscarSesion = (HttpSession)request.getSession();
    String usuario="";
if (buscarSesion.getAttribute("datos") == null) {
         request.getRequestDispatcher("Index.jsp").forward(request, response);
   
    }else{
    UsuarioVO  usuVO = (UsuarioVO)buscarSesion.getAttribute("datos");
    usuario = usuVO.getLoginUsuario();
}

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>

    <body background="img/foto.jpg">
        <h1>Bienvenido: <%=usuario%></h1>
        <form method="post" action="Sesiones">
           
            <button type="submit" value="Cerrar Sesión" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Cerrar Sesión </button>
                <input class="btn btn-danger btn-block" type="hidden" value="4" name="opcion">

        </form> 
    </body>
</html>