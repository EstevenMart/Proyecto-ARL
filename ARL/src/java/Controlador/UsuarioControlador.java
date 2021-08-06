/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.UsuarioDAO;
import ModeloVO.UsuarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author emart
 */
@WebServlet(name = "UsuarioControlador", urlPatterns = {"/Usuario"})
public class UsuarioControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String idUsuario = request.getParameter("textUsuario");
        String idTipoDoc = request.getParameter("textTipoDoc");
        String idRol = request.getParameter("textRol");
        String idCargo = request.getParameter("textCargo");
        String idAFP = request.getParameter("textAFP");
        String idARP = request.getParameter("textARP");
        String idEPS = request.getParameter("textEPS");
        String idMunicipio = request.getParameter("textMunicipio");
        String tipoSangre = request.getParameter("textTipoSangre");
        String nombreUsuario = request.getParameter("textNombreUsu");
        String apellidoUsuario = request.getParameter("textApellidoUsu");
        String noDocumentoUsuario = request.getParameter("textNoDocumentoUsu");
        String telefonoUsuario = request.getParameter("textTelefonoUsu");
        String correoUsuario = request.getParameter("textCorreoUsuario");
        String fechaNaciUsuario = request.getParameter("textFechaNaciUsuario");
        String estado = request.getParameter("textEstado");
        String contraseñaUsuario = request.getParameter("textContraseñaUsu");
        String loginUsuario = request.getParameter("textLoginUsu");
        String sexo = request.getParameter("textSexo");
        String direccion = request.getParameter("textDireccion");
        String jornada = request.getParameter("textJornada");
        String fechaIngresoEmpresa = request.getParameter("textFechaIngreso");
        String tipoDeVinculacion = request.getParameter("textTipoVinculacion");

        UsuarioVO usuVO = new UsuarioVO(idUsuario, idTipoDoc, idRol, idCargo,
                idAFP, idARP, idEPS, idMunicipio, tipoSangre,
                nombreUsuario, apellidoUsuario, noDocumentoUsuario, telefonoUsuario, correoUsuario,
                fechaNaciUsuario, estado, contraseñaUsuario, loginUsuario, sexo,
                direccion, jornada, fechaIngresoEmpresa, tipoDeVinculacion);

        UsuarioDAO usuDAO = new UsuarioDAO(usuVO);

        switch (opcion) {
            case 1: //Agregar Registro
                if (usuDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El Usuario se registró correctamente");
                } else {
                    request.setAttribute("mensajeError", "El Usuario NO se registró correctamente");

                }
                request.getRequestDispatcher("Registrarusuario.jsp").forward(request, response);
                break;
            case 2: //Actualizar Registro

                if (usuDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "El Usuario se actualizó correctamente");
                } else {
                    request.setAttribute("mensajeError", "El Usuario  NO se actualizó correctamente");

                }
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            case 3:
                usuVO = usuDAO.consultarUsuario(noDocumentoUsuario);
                if (usuVO != null) {
                    request.setAttribute("vehiculo", usuVO);
                    request.getRequestDispatcher("ActualizarUsuario.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El vehículo  NO exite");
                    request.getRequestDispatcher("ConsultarUsuario.jsp").forward(request, response);
                }
                break;

        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
