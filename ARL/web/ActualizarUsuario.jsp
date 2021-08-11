<%-- 
    Document   : ActualizarUsuario
    Created on : 5/08/2021, 05:09:20 PM
    Author     : emart
--%>
<%@page import="ModeloVO.UsuarioVO"%>
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
         <link rel="stylesheet" href="css/style1.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        <title>Actualizar Usuario</title>
    </head>

    <body>
    <center>
        <h1>Actualizar Usuario</h1>
        <%            UsuarioVO usuVO = (UsuarioVO) request.getAttribute("Usuario");
            if (usuVO != null) {
        %>
        <form action="Usuario" method="POST">
            <table>
                <tr>
                    <th>
                        Nombre<br>
                        <input type="text" name="textNombreUsu" value="<%=usuVO.getNombreUsuario()%>"><br><br>
                        Apellido<br>
                        <input type="text" name="textApellidoUsu" value="<%=usuVO.getApellidoUsuario()%>"><br><br>
                        Tipo Documento<br>
                        <select class="form-select" aria-label="Default select example" name="textTipoDoc">
                            <option value="<%=usuVO.getIdTipoDoc()%>"><%=usuVO.getIdTipoDoc()%></option>
                            <%                                TipoDocumentoDAO TipDocDAO = new TipoDocumentoDAO();
                                for (TipoDocumentoVO TipDocVO : TipDocDAO.listar()) {
                            %>
                            <option value="<%=TipDocVO.getIdTipoDoc()%>"><%=TipDocVO.getNombreTipoDoc()%></option>
                            <%}%>
                        </select><br><br>

                        Numero de Documento<br>
                        <input type="text" name="textNoDocumentoUsu" value="<%=usuVO.getNoDocumentoUsuario()%>"><br><br>             

                        Rol<br>
                        <select class="form-select" aria-label="Default select example" name="textRol">
                            <option value="<%=usuVO.getIdRol()%>"><%=usuVO.getIdRol()%></option>
                            <%                                RolDAO rolDAO = new RolDAO();
                                for (RolVO rolVO : rolDAO.listar()) {
                            %>
                            <option value="<%=rolVO.getIdRol()%>"><%=rolVO.getNombreRol()%></option>
                            <%}%>
                        </select>
                        Cargo<br>
                        <select class="form-select" aria-label="Default select example" name="textCargo">
                            <option value="<%=usuVO.getIdCargo()%>"><%=usuVO.getIdCargo()%></option>
                            <%                                CargoDAO cargoDAO = new CargoDAO();
                                for (CargoVO cargoVO : cargoDAO.listar()) {
                            %>
                            <option value="<%=cargoVO.getIdCargo()%>"><%=cargoVO.getNombreCargo()%></option>
                            <%}%>
                        </select>
                        <br><br>
                        Tipo de Sangre<br>
                        <select class="form-select" aria-label="Default select example" name="textTipoSangre">
                            <option selected value="<%=usuVO.getTipoSangre()%>"><%=usuVO.getTipoSangre()%></option>
                            <option value="1">A+</option>
                            <option value="2">A-</option>
                            <option value="3">AB+</option>
                            <option value="4">AB-</option>
                            <option value="5">O+</option>
                            <option value="6">O-</option>
                        </select><br><br>
                        Telefono<br>
                        <input type="number" name="textTelefonoUsu" value="<%=usuVO.getTelefonoUsuario()%>"><br><br>
                        Correo Electronica<br>
                        <input type="text" name="textCorreoUsuario" value="<%=usuVO.getCorreoUsuario()%>"><br><br>
                        Fecha de Nacimiento<br>
                        <input type="date" name="textFechaNaciUsuario" value="<%=usuVO.getFechaNaciUsuario()%>" ><br><br>
                        Estado<br>
                        <select class="form-select" aria-label="Default select example" name="textEstado">
                            <option selected value="<%=usuVO.getEstado()%>"><%=usuVO.getEstado()%></option>
                            <option value="1">Activo</option>
                            <option value="2">Inactivo</option>
                        </select><br><br>
                        Sexo<br>
                        <select class="form-select" aria-label="Default select example" name="textSexo">
                            <option selected value="<%=usuVO.getSexo()%>"><%=usuVO.getSexo()%></option>
                            <option value="1">Masculino</option>
                            <option value="2">Femenino</option>
                            <option value="3">Indefinido</option>
                        </select><br><br>
                        Direccion<br>
                        <input type="text" name="textDireccion" value="<%=usuVO.getDireccion()%>"><br><br>
                        Usuario login<br>
                        <input type="text" name="textLoginUsu"value="<%=usuVO.getLoginUsuario()%>" ><br><br>
                        Usuaerio contraseña<br>
                        <input type="text" name="textContraseñaUsu" value="<%=usuVO.getContraseñaUsuario()%>"><br><br>
                        Jornada<br>
                        <select class="form-select" aria-label="Default select example" name="textJornada" >
                            <option selected value="<%=usuVO.getJornada()%>"><%=usuVO.getJornada()%></option>
                            <option value="1">Diurna</option>
                            <option value="2">Mixta</option>
                            <option value="3">Nocturna</option>
                        </select><br><br>
                        Fecha de Ingreso a la Empresa<br>
                        <input type="date" name="textFechaIngreso" value="<%=usuVO.getFechaIngresoEmpresa()%>"><br><br>
                        Tipo de Vinculacion<br>
                        <select class="form-select" aria-label="Default select example" name="textTipoVinculacion">
                            <option selected value="<%=usuVO.getTipoDeVinculacion()%>"><%=usuVO.getTipoDeVinculacion()%></option>
                            <option value="1">Planta</option>
                            <option value="2">Misión</option>
                            <option value="3">Estudiante o
                                Aprendiz</option>
                            <option value="4">Independiente</option>
                        </select><br><br>
                        Afp<br>
                        <select class="form-select" aria-label="Default select example" name="textAFP">
                            <option value="<%=usuVO.getIdAFP()%>"><%=usuVO.getIdAFP()%></option>
                            <%                                AFPDAO afpDAO = new AFPDAO();
                                for (AFPVO afpVO : afpDAO.listar()) {
                            %>
                            <option value="<%=afpVO.getIdAFP()%>"><%=afpVO.getDenominacionAFP()%></option>
                            <%}%>
                        </select><br><br>
                        Municipio<br>
                        <select class="form-select" aria-label="Default select example" name="textMunicipio">
                            <option value="<%=usuVO.getIdMunicipio()%>"><%=usuVO.getIdMunicipio()%></option>
                            <%                                MunicipioDAO municipioDAO = new MunicipioDAO();
                                for (MunicipioVO municipioVO : municipioDAO.listar()) {
                            %>
                            <option value="<%=municipioVO.getIdMunicipio()%>"><%=municipioVO.getDenominacionMunicipio()%></option>
                            <%}%>
                        </select>
                        <br><br>
                        ARP<br>
                        <select class="form-select" aria-label="Default select example" name="textARP">
                            <option value="<%=usuVO.getIdARP()%>"><%=usuVO.getIdARP()%></option>
                            <%                                ARPDAO arpDAO = new ARPDAO();
                                for (ARPVO arpVO : arpDAO.listar()) {
                            %>
                            <option value="<%=arpVO.getIdARP()%>"><%=arpVO.getDenominacionAFP()%></option>
                            <%}%>
                        </select>
                        <br><br>
                        EPS<br>
                        <select class="form-select" aria-label="Default select example" name="textEPS">
                            <option value="<%=usuVO.getIdARP()%>" ><%=usuVO.getIdARP()%></option>
                            <%                                EPSDAO epsDAO = new EPSDAO();
                                for (EPSVO epsVO : epsDAO.listar()) {
                            %>
                            <option value="<%=epsVO.getIdEPS()%>"><%=epsVO.getDenominacionEPS()%></option>
                            <%}%>
                        </select>

                    </th>
                </tr>

            </table>
            
             <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Actualizar Usuario</button>
            <input class="btn btn-danger btn-block" type="hidden" value="2" name="opcion">
        </form> 
        <%}%>

        <br>
        <button type="button" class="btn btn-light"><a href="ConsultarUsuario.jsp">Consultar Usuario</a></button><br><br>

    </center>
</body>
</html>