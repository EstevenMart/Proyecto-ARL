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
          <a href="#" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Usuario</span>
          </a>
        </li>
        <li>
          <a href="#" class="active">
            <i  class='bx bx-box'style="color: black;" ></i>
            <span class="links_name" style="color: black;">Registrar usuario</span>
          </a>
      
         </li>
        <li>
          <a href="#">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Consultar usuario</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Actualizar Usuario</span>
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
          <a href="#">
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
    <!-- <div class="home-content">
      <div class="overview-boxes">
        <div class="box"> 
          <div class="right-side">
            <div class="box-topic"><a href="">Reportes nuevos</a> </div>
            <div class="number">8</div>
           
          </div>
          
          <i class="fas fa-pencil-alt cart four"></i>
        </div>
        
        <div class="box"> 
          <div class="right-side">
            <div class="box-topic"><a href="">Reportes en proceso</a> </div>
            <div class="number">2</div>
            
          </div>
          <i class="fas fa-pencil-ruler cart "></i>
         </div>
      
        <div class="box">
          
          <div class="right-side">
            <div class="box-topic"><a href="">Reportes realizados</a> </div>
            <div class="number">789</div>
            
          </div>
          <i class="fas fa-tasks cart two "></i>
          
        </div>
        <div class="box"> 
          <div class="right-side">
            <div class="box-topic"><a href="">Total de reportes</a> </div>
            <div class="number">800</div>
           
          </div>
          <i class="far fa-clipboard cart three"></i>
          
          
         </div>
      </div> -->


      
      <!-- <div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">Recent Sales</div>
          <div class="sales-details">
            <ul class="details">
              <li class="topic">Date</li>
              <li><a href="#">02 Jan 2021</a></li>
              <li><a href="#">02 Jan 2021</a></li>
              <li><a href="#">02 Jan 2021</a></li>
              <li><a href="#">02 Jan 2021</a></li>
              <li><a href="#">02 Jan 2021</a></li>
              <li><a href="#">02 Jan 2021</a></li>
              <li><a href="#">02 Jan 2021</a></li>
                <li><a href="#">02 Jan 2021</a></li>
                <li><a href="#">02 Jan 2021</a></li>
              
            </ul>
            <ul class="details">
            <li class="topic">Customer</li>
            <li><a href="#">Alex Doe</a></li>
            <li><a href="#">David Mart</a></li>
            <li><a href="#">Roe Parter</a></li>
            <li><a href="#">Diana Penty</a></li>
            <li><a href="#">Martin Paw</a></li>
            <li><a href="#">Doe Alex</a></li>
            <li><a href="#">Aiana Lexa</a></li>
            <li><a href="#">Rexel Mags</a></li>
             <li><a href="#">Tiana Loths</a></li>
             
          </ul>
          <ul class="details">
            <li class="topic">Sales</li>
            <li><a href="#">Delivered</a></li>
            <li><a href="#">Pending</a></li>
            <li><a href="#">Returned</a></li>
            <li><a href="#">Delivered</a></li>
            <li><a href="#">Pending</a></li>
            <li><a href="#">Returned</a></li>
            <li><a href="#">Delivered</a></li>
             <li><a href="#">Pending</a></li>
            <li><a href="#">Delivered</a></li>
          </ul>
          <ul class="details">
            <li class="topic">Total</li>
            <li><a href="#">$204.98</a></li>
            <li><a href="#">$24.55</a></li>
            <li><a href="#">$25.88</a></li>
            <li><a href="#">$170.66</a></li>
            <li><a href="#">$56.56</a></li>
            <li><a href="#">$44.95</a></li>
            <li><a href="#">$67.33</a></li>
             <li><a href="#">$23.53</a></li>
             <li><a href="#">$46.52</a></li>
          </ul>
          </div>
          <div class="button">
            <a href="#">See All</a>
          </div>
        </div>
      
      </div>
      <div class="overview-boxes">
        <div class="box"> 
          <div class="right-side">
            <div class="box-topic"><a href="">Reportes nuevos</a> </div>
            <div class="number">8</div>
           
          </div>
          
          <i class="fas fa-pencil-alt cart four"></i>
        </div>
        
        <div class="box"> 
          <div class="right-side">
            <div class="box-topic"><a href="">Reportes en proceso</a> </div>
            <div class="number">2</div>
            
          </div>
          <i class="fas fa-pencil-ruler cart "></i>
         </div>
      
        <div class="box">
          
          <div class="right-side">
            <div class="box-topic"><a href="">Reportes realizados</a> </div>
            <div class="number">789</div>
            
          </div>
          <i class="fas fa-tasks cart two "></i>
          
        </div>
        <div class="box"> 
          <div class="right-side">
            <div class="box-topic"><a href="">Total de reportes</a> </div>
            <div class="number">800</div>
           
          </div>
          <i class="far fa-clipboard cart three"></i> -->
          
          

      
    
            <div>
                <% if (request.getAttribute("MensajeError") != null) {%>
                <div style="color: red">${mensajeError}</div>
                <%} else {%>
                <div style="color: blue">${mensajeExito}</div>
                <%}%>
            </div> 
            <br>
            <center>
                <h1>Usuario</h1>
                <form method="POST" action="Usuario">
                    <table>
                        <tr>
                            <th>
                                Numero de Documento del Usuario
                                <input type="text" name="textNoDocumentoUsu">
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
                <button type="button" class="btn btn-light"><a href="menu.jsp">Menu</a></button>
        </center>

         </div>
      </div>
</div>
    
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>