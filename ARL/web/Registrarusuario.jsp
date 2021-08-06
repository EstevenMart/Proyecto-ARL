<%-- 
    Document   : Registrarusuario
    Created on : 4/08/2021, 08:27:19 AM
    Author     : emart
--%>
<%@page import="ModeloVO.TipoDocumentoVO"%>
<%@page import="ModeloDAO.TipoDocumentoDAO"%>
<%@page import="ModeloVO.AFPVO"%>
<%@page import="ModeloDAO.AFPDAO"%>
<%@page import="ModeloVO.ARPVO"%>
<%@page import="ModeloDAO.ARPDAO"%>
<%@page import="ModeloVO.EPSVO"%>
<%@page import="ModeloDAO.EPSDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.MunicipioVO"%>
<%@page import="ModeloDAO.MunicipioDAO"%>
<%@page import="ModeloVO.CargoVO"%>
<%@page import="ModeloDAO.CargoDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <title>Registrar Usuario</title>
    </head>
    <body>
    <center>
        <h1>Registrar Usuario</h1>

        <form action="Usuario" method="POST">
            <table>
                <tr>
                    <th>

                        Nombre<br>
                        <input type="text" name="textNombreUsu"><br><br>
                        Apellido<br>
                        <input type="text" name="textApellidoUsu"><br><br>
                        Tipo Documento<br>
                        <select class="form-select" aria-label="Default select example" name="textTipoDoc">
                            <option value="0">Seleccione...</option>
                               <%                                TipoDocumentoDAO TipDocDAO = new TipoDocumentoDAO();
                                for (TipoDocumentoVO TipDocVO : TipDocDAO.listar()) {
                            %>
                            <option value="<%=TipDocVO.getIdTipoDoc()%>"><%=TipDocVO.getNombreTipoDoc()%></option>
                            <%}%>
                        </select><br><br>
             
                        Numero de Documento<br>
                        <input type="text" name="textNoDocumentoUsu"><br><br>
                       
                      
                           Rol<br>
                        <select class="form-select" aria-label="Default select example" name="textRol">
                            <option value="0">Seleccione...</option>
                               <%                                RolDAO rolDAO = new RolDAO();
                                for (RolVO rolVO : rolDAO.listar()) {
                            %>
                            <option value="<%=rolVO.getIdRol()%>"><%=rolVO.getNombreRol()%></option>
                            <%}%>
                        </select>
                        Cargo<br>
                         <select class="form-select" aria-label="Default select example" name="textCargo">
                            <option value="0">Seleccione...</option>
                               <%                                CargoDAO cargoDAO = new CargoDAO();
                                for (CargoVO cargoVO : cargoDAO.listar()) {
                            %>
                            <option value="<%=cargoVO.getIdCargo()%>"><%=cargoVO.getNombreCargo()%></option>
                            <%}%>
                        </select>
                        <br><br>
                        Tipo de Sangre<br>
                        <select class="form-select" aria-label="Default select example" name="textTipoSangre">
                            <option selected>Seleccione...</option>
                            <option value="1">A+</option>
                            <option value="2">A-</option>
                            <option value="3">AB+</option>
                            <option value="4">AB-</option>
                            <option value="5">O+</option>
                            <option value="6">O-</option>
                        </select><br><br>
                        Telefono<br>
                        <input type="text" name="textTelefonoUsu"><br><br>
                        Correo Electronica<br>
                        <input type="text" name="textCorreoUsuario"><br><br>
                        Fecha de Nacimiento<br>
                        <input type="date" name="textFechaNaciUsuario"><br><br>
                        Estado<br>
                        <select class="form-select" aria-label="Default select example" name="textEstado">
                            <option selected>Seleccione...</option>
                            <option value="1">Activo</option>
                            <option value="2">Inactivo</option>
                        </select><br><br>
                        Sexo<br>
                        <select class="form-select" aria-label="Default select example" name="textSexo">
                            <option selected>Seleccione...</option>
                            <option value="1">Masculino</option>
                            <option value="2">Femenino</option>
                            <option value="3">Indefinido</option>
                        </select><br><br>
                        Direccion<br>
                        <input type="text" name="textDireccion"><br><br>
                         Usuario login<br>
                        <input type="text" name="textLoginUsu"><br><br>
                         Usuaerio contraseña<br>
                        <input type="text" name="textContraseñaUsu"><br><br>
                        Jornada<br>
                        <select class="form-select" aria-label="Default select example" name="textJornada">
                            <option selected>Seleccione...</option>
                            <option value="1">Diurna</option>
                            <option value="2">Mixta</option>
                            <option value="3">Nocturna</option>
                        </select><br><br>
                        Fecha de Ingreso a la Empresa<br>
                        <input type="date" name="textFechaIngreso"><br><br>
                        Tipo de Vinculacion<br>
                        <select class="form-select" aria-label="Default select example" name="textTipoVinculacion">
                            <option selected>Seleccione...</option>
                            <option value="1">Planta</option>
                            <option value="2">Misión</option>
                            <option value="2">Estudiante o
                                Aprendiz</option>
                            <option value="2">Independiente</option>
                        </select><br><br>
                      AFP<br>
                        <select class="form-select" aria-label="Default select example" name="textAFP">
                          <option value="0">Seleccione...</option>
                               <%                                AFPDAO afpDAO = new AFPDAO();
                                for (AFPVO afpVO : afpDAO.listar()) {
                            %>
                            <option value="<%=afpVO.getIdAFP()%>"><%=afpVO.getDenominacionAFP()%></option>
                            <%}%>
                        </select><br><br>
                         Municipio<br>
                         <select class="form-select" aria-label="Default select example" name="textMunicipio">
                            <option value="0">Seleccione...</option>
                               <%                                MunicipioDAO municipioDAO = new MunicipioDAO();
                                for (MunicipioVO municipioVO : municipioDAO.listar()) {
                            %>
                            <option value="<%=municipioVO.getIdMunicipio()%>"><%=municipioVO.getDenominacionMunicipio()%></option>
                            <%}%>
                        </select>
                        <br><br>
                        ARP<br>
                        <select class="form-select" aria-label="Default select example" name="textARP">
                            <option value="0">Seleccione...</option>
                               <%                                ARPDAO arpDAO = new ARPDAO();
                                for (ARPVO arpVO : arpDAO.listar()) {
                            %>
                            <option value="<%=arpVO.getIdARP()%>"><%=arpVO.getDenominacionAFP()%></option>
                            <%}%>
                        </select><br><br>
                        EPS<br>
                        <select class="form-select" aria-label="Default select example" name="textEPS">
                            <option value="0">Seleccione...</option>
                               <%                                EPSDAO epsDAO = new EPSDAO();
                                for (EPSVO epsVO : epsDAO.listar()) {
                            %>
                            <option value="<%=epsVO.getIdEPS()%>"><%=epsVO.getDenominacionEPS()%></option>
                            <%}%>
                        </select><br><br>
                       
                    </th>
                </tr>
            </table>

            <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Registrar Usuario</button>
            <input class="btn btn-danger btn-block" type="hidden" value="1" name="opcion">

        </form>

        <div>
            <% if (request.getAttribute("MensajeError") != null) {%>
            <div style="color: red">${mensajeError}</div>
            <%} else {%>
            <div style="color: blue">${mensajeExito}</div>
            <%}%>
        </div>
        <br>

    </center>
</body>
</html>
