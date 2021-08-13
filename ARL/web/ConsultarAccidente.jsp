<%-- 
    Document   : ConsultarAccidente
    Created on : 11/08/2021, 07:19:03 PM
    Author     : luisa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.AccidenteDAO"%>
<%@page import="ModeloVO.AccidenteVO"%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
        <link rel="stylesheet" href="css/style1.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="sidebar">
            <div class="logo-details">
                <img src="grupo.png" width="40px" height="40px ">
                <!-- <i class='bx bxl-c-plus-plus'></i> -->
                <span class="logo_name">Grupo Forte</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="Menu.jsp" >
                        <i class='bx bx-grid-alt' ></i>
                        <span class="links_name">Menu</span>
                    </a>
                </li>
                <li>
                    <a href="RegistrarAccidente.jsp" class="active">
                        <i  class='bx bx-box'style="color: black;" ></i>
                        <span class="links_name" style="color: black;">Registrar Accidente</span>
                    </a>

                </li>
                <li>
                    <a href="ConsultarUsuario.jsp">
                        <i class='bx bx-list-ul' ></i>
                        <span class="links_name">Consultar usuario</span>
                    </a>
                </li>
                <li>
                    <a href="Cargo.jsp">
                        <i class='bx bx-coin-stack' ></i>
                        <span class="links_name">Cargo</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-coin-stack' ></i>
                        <span class="links_name">Accidente</span>
                    </a>
                </li>
                <!--<li>
                  <a href="#">
                    <i class='bx bx-book-alt' ></i>
                    <span class="links_name">Total order</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class='bx bx-user' ></i>
                    <span class="links_name">Team</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class='bx bx-message' ></i>
                    <span class="links_name">Messages</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class='bx bx-heart' ></i>
                    <span class="links_name">Favrorites</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class='bx bx-cog' ></i>
                    <span class="links_name">Setting</span>
                  </a>
                </li>-->
                <li class="log_out">
                    <a href="Index.jsp">
                        <i class='bx bx-log-out'></i>
                        <span class="links_name">Salir</span>
                    </a>
                </li> 
            </ul>
        </div>
        <section class="home-section">
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Grupo Forte</span>
                </div>
                <div class="search-box">
                    <input type="text" placeholder="Buscar...">
                    <i class='bx bx-search' ></i>
                </div>
                <div class="profile-details">
                    <img src="portada-foto-perfil-redes-sociales-consejos.jpg" alt="">
                    <span class="admin_name">Administrador</span>
                    <!-- <i class='bx bx-chevron-down' ></i> -->
                </div>
            </nav>
            <br>
            <center>
                </br></br> </br></br></br>
                <h1>Consultar Accidente</h1>
                <form action="Accidente" method="POST" style="background-color: rgb(218, 216, 216); border-radius: 30px; margin-left: 80px; margin-right: 80px;">
                    <table>
                        <tr>
                            <th>
                                </br></br>
                                Numero de Documento del Usuario
                                <input type="text" name="textDia">
                                <button >Consultar</button>
                                <input type="hidden" value="3" name="opcion">
                            </th>
                        </tr>
                    </table><br><br>

                </form><br><br>
                <div>
                    <% if (request.getAttribute("mensajeError") != null) {%>
                    <div style="color: red">${mensajeError}</div>
                    <%} else {%>
                    <div style="color: cyan">${mensajeExito}</div>
                    <%}%>
                </div><br><br>
                <form>
                    <table class="table table-hover table-bordered">
                        <tr class="alert alert-dark" role="alert">
       
                            <th> Mecanismo</th>
                            <th> Agente Accidente</th>
                            <th>Sitio</th>
                            <th>Tipo Accidente</th>
                            <th>Fecha Hora</th>
                            <th>Dia</th>
                            <th>Jornada</th>
                            <th>Labor Habitual</th>
                            <th>Tiempo PA</th>
                            <th>Cantidad de Horas</th>
                            <th>Cantidad de Minutos</th>
                            <th>Empresa</th>
                            <th>Causa de Muerte</th>
                            <th>Descripcion</th>
                            
                        <%
                            AccidenteVO aciVO = new AccidenteVO();
                            AccidenteDAO aciDAO = new AccidenteDAO();
                            ArrayList<AccidenteVO> listaAccidente = aciDAO.listar();
                            for (int i = 0; i < listaAccidente.size(); i++) {

                                aciVO = listaAccidente.get(i);

                        %>
                        <tr class="alert alert-primary">
                            <td><%=aciVO.getTipoaccidente()%></td>
                            <td><%=aciVO.getFechaHora()%></td>
                            <td><%=aciVO.getDia()%></td>
                            <td><%=aciVO.getJornada()%></td>
                            <td><%=aciVO.getLaborHabitual()%></td>
                            <td><%=aciVO.getTiempoPA()%></td>
                            <td><%=aciVO.getCantHoras()%></td>
                            <td><%=aciVO.getCantMinutos()%></td>
                            <td><%=aciVO.getEmpresa()%></td>
                            <td><%=aciVO.getCausaMuerte()%></td>
                            <td><%=aciVO.getDescripcion()%></td>
                        

                        </tr>
                        <%}%>
                        <tr class="alert alert-dark" role="alert">
                            <th>Tipo Accidente </th>
                            <th>Fecha Hora</th>
                            <th>Dia</th>
                            <th>Jornada</th>
                            <th>Labor Habitual</th>
                            <th>Tiempo PA</th>
                            <th>Cantidad de Horas</th>
                            <th>Cantidad de minutos</th>
                            <th>Empresa</th>
                            <th>Causa de Muerte</th>
                            <th>Descripcion</th>
                            
                        </tr>
                    </table>
                </form>
                <br>

            </center>

        </section>

        <script>
            let sidebar = document.querySelector(".sidebar");
            let sidebarBtn = document.querySelector(".sidebarBtn");
            sidebarBtn.onclick = function () {
                sidebar.classList.toggle("active");
                if (sidebar.classList.contains("active")) {
                    sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                } else
                    sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
            }
        </script>

    </body>
</html>