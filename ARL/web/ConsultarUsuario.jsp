<%-- 
    Document   : ConsultarUsuario
    Created on : 5/08/2021, 02:25:52 PM
    Author     : emart
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <title>Consultar Usuario</title>
    </head>
    <body>
        <center>
        <h1>Usuario</h1>
        <form method="POST" action="Usuario">
            <table>
                <tr>
                    <th>
                        Numero de Documento del Usuario
                        <input type="text" name="textNoDocumentoUsu">
                        <button >Consultar</button>
                    </th>
                </tr>
            </table><br><br>
            <input type="hidden" value="3" name="opcion">
        </form><br><br>
        <div>
            <% if (request.getAttribute("mensajeError") != null) {%>
            <div style="color: red">${mensajeError}</div>
            <%} else {%>
            <div style="color: cyan">${mensajeExito}</div>
            <%}%>
        </div><br><br>
    </body>
</html>
