<%-- 
    Document   : Index
    Author     : emartCreated on : 12/08/2021, 09:58:36 AM
    Author     : emart
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link rel="stylesheet" href="#">
        <title>Iniciar Sesion</title>
    </head>
    <body>
<center>
        <div class="container col-lg-3">
            <div class="form-group text-center">
                <img src="img/usu.jpg" height="95" width="95" />

                <h2 style="#"><i>Ingresar al sistema</i></h2>
                <form method="POST" action="Usuario">
                    <table>
                        <tr>
                        <h5 style="#">Usuario:</h5> 
                        <input type="text" name="textLoginUsu"><br>
                        <h5 style="#">Contraseña:</h5>
                        <input type="password" name="textContraseñaUsu"><br>
                        </tr>
                    </table><br>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Iniciar sesión </button>
                    <input class="btn btn-danger btn-block" type="hidden" value="4" name="opcion"><br><br>
                    
                   
                </form><br>
                
        
                
                <div>
                    <% if (request.getAttribute("mensajeError") != null) {%>
                    <div style="color: red">${mensajeError}</div>
                    <%} else {%>
                    <div style="color: cyan">${mensajeExito}</div>
                    <%}%>
                </div>
                </div>
            </div>
    </center>
</html>