<%-- 
    Document   : Registrarusuario
    Created on : 4/08/2021, 08:27:19 AM
    Author     : Luisa
--%>



<%@page import="ModeloVO.AccidenteVO"%>
<%@page import="ModeloDAO.AccidenteDAO"%>
<%@page import="ModeloVO.AccidenteParteCuerpoVO"%>
<%@page import="ModeloDAO.AccidenteParteCuerpoDAO"%>
<%@page import="ModeloVO.AccidenteTipoLesionVO"%>
<%@page import="ModeloDAO.AccidenteTipoLesionDAO"%>
<%@page import="ModeloVO.AgenteAccidenteVO"%>
<%@page import="ModeloDAO.AgenteAccidenteDAO"%>
<%@page import="ModeloVO.MecanismoVO"%>
<%@page import="ModeloDAO.MecanismoDAO"%>
<%@page import="ModeloVO.OtrasPersonasVO"%>
<%@page import="ModeloDAO.OtrasPersonasDAO"%>
<%@page import="ModeloVO.ParteCuerpoVO"%>
<%@page import="ModeloDAO.ParteCuerpoDAO"%>
<%@page import="ModeloVO.SitioVO"%>
<%@page import="ModeloDAO.SitioDAO"%>
<%@page import="ModeloVO.TipoLesionVO"%>
<%@page import="ModeloDAO.TipoLesionDAO"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Atualizar Accidente</title>
    </head>
    <body>
        <div class="sidebar">
    <div class="logo-details">
        <img src="img/grupo.jpeg" width="40px" height="40px ">
      <!-- <i class='bx bxl-c-plus-plus'></i> -->
      <span class="logo_name">Grupo Forte</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="#" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name"> Accidente</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-box' ></i>
            <span class="links_name">Usuario</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Accidente</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Reporte</span>
          </a>
        </li>
       
        <li class="log_out">
          <a href="#">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Volver al Inicio</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Actualizar Accidente</span>
      </div>
      <div class="profile-details">
        <img src="img/administradorimg.png" alt="">
        <span class="admin_name">Administrador</span>
        <!-- <i class='bx bx-chevron-down' ></i> -->
      </div>
    </nav>
   <div class="home-content">   
    <center>
        <h1>Actualizar Accidente</h1>

        <form action="Usuario" method="POST">
            <table>
                <tr>
                    <th>

                        Id Accidente<br>
                        <input type="text" name="textNombreUsu"><br><br>
                        
                        Id Mecanismo<br>
                        <input type="text" name="textNombreUsu"><br><br>
                        
                        IdAgentAcci<br>
                        <input type="text" name="textNombreUsu"><br><br>
                        
                        idSitio<br>
                        <input type="text" name="textNombreUsu"><br><br>
                        
                        Tipo Accidente<br>
                        <input type="text" name="textApellidoUsu"><br><br>
                        
                        <p>Fecha y Hora<br> <input type="datetime-local"></p><br>
             
                        Dia<br>
                        <input type="text" name="textNoDocumentoUsu"><br><br>
                       
                      
                        Jornada<br>
                        <select class="form-select" aria-label="Default select example" name="textJornada">
                            <option selected>Seleccione...</option>
                            <option value="1">Diurna</option>
                            <option value="2">Mixta</option>
                            <option value="3">Nocturna

                        </select><br><br>
                            
                        
                        Labor Habitual<br>
                         <select class="form-select" aria-label="Default select example" name="textJornada">
                            <option selected>Seleccione...</option>
                            <option value="1">Diurna</option>
                            <option value="2">Mixta</option>
                            <option value="3">Nocturna</option>
                        </select><br><br>
                        
                        <br><br>
                        Tiempo PA<br>
                        <select class="form-select" aria-label="Default select example" name="textTipoSangre">
                            <option selected>Seleccione...</option>
                            <option value="1">A+</option>
                            <option value="2">A-</option>
                            <option value="3">AB+</option>
                            <option value="4">AB-</option>
                            <option value="5">O+</option>
                            <option value="6">O-</option>
                        </select><br><br>
                        Cantidad Horas<br>
                        <input type="text" name="textTelefonoUsu"><br><br>
                        
                        Cantidad Minutos<br>
                        <input type="text" name="textCorreoUsuario"><br><br>
                        
                        Empresa<br>
                        <input type="date" name="textFechaNaciUsuario"><br><br>
                        Causa muerte<br>
                        <select class="form-select" aria-label="Default select example" name="textEstado">
                            <option selected>Seleccione...</option>
                            <option value="1">Activo</option>
                            <option value="2">Inactivo</option>
                        </select><br><br>
                        
                        Descripcion<br>
                        <select class="form-select" aria-label="Default select example" name="textSexo">
                            <option selected>Seleccione...</option>
                            <option value="1">Masculino</option>
                            <option value="2">Femenino</option>
                            <option value="3">Indefinido</option>
                        </select><br><br>                      
                    </th>
                </tr>
            </table>

            <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Actualizar Accidente</button>
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


