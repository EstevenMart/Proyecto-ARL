<%-- 
    Document   : Cargo
    Created on : 12/08/2021, 09:11:17 AM
    Author     : emart
--%>

<%@page import="ModeloVO.CargoVO"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style1.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        <title>Registrar Usuario</title>
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
                    <a href="Registrarusuario.jsp" class="active">
                        <i  class='bx bx-box'style="color: black;" ></i>
                        <span class="links_name" style="color: black;">Registrar usuario</span>
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
                </div>
            </nav>

            <center>
                </br></br> </br></br></br>
                <h1>Registrar Cargo</h1>

                <form action="Usuario" method="POST" style="background-color: rgb(218, 216, 216); border-radius: 30px; margin-left: 80px; margin-right: 80px;">
                    <table>
                        <tr>
                            <th>
                                <br><br>
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
                            </th>
                        </tr>
                    </table>

                    <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Registrar Cargo</button>
                    <input class="btn btn-danger btn-block" type="hidden" value="1" name="opcion">

                    <br>                    <br>

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
