/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.UsuarioVO;
import Util.Conexion;
import Util.Crud;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author emart
 */
public class UsuarioDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    public UsuarioDAO() {
    }

    private String idUsuario = "", idTipoDoc = "", idRol = "", idCargo = "", idAFP = "", idARP = "", idEPS = "",
            idMunicipio = "", tipoSangre = "", nombreUsuario = "", apellidoUsuario = "", noDocumentoUsuario = "", telefonoUsuario = "", correoUsuario = "",
            fechaNaciUsuario = "", estado = "", contraseñaUsuario = "", loginUsuario = "", sexo = "", direccion = "", jornada = "",
            fechaIngresoEmpresa = "", tipoDeVinculacion = "";

    public UsuarioDAO(UsuarioVO usuVO) {

        super();

        try {

            conexion = this.obtenerConexion();
            idUsuario = usuVO.getIdUsuario();
            idTipoDoc = usuVO.getIdTipoDoc();
            idRol = usuVO.getIdRol();
            idCargo = usuVO.getIdCargo();
            idAFP = usuVO.getIdAFP();
            idARP = usuVO.getIdARP();
            idEPS = usuVO.getIdEPS();
            idMunicipio = usuVO.getIdMunicipio();
            tipoSangre = usuVO.getTipoSangre();
            nombreUsuario = usuVO.getNombreUsuario();
            apellidoUsuario = usuVO.getApellidoUsuario();
            noDocumentoUsuario = usuVO.getNoDocumentoUsuario();
            telefonoUsuario = usuVO.getTelefonoUsuario();
            correoUsuario = usuVO.getCorreoUsuario();
            fechaNaciUsuario = usuVO.getFechaNaciUsuario();
            estado = usuVO.getEstado();
            contraseñaUsuario = usuVO.getContraseñaUsuario();
            loginUsuario = usuVO.getLoginUsuario();
            sexo = usuVO.getSexo();
            direccion = usuVO.getDireccion();
            jornada = usuVO.getJornada();
            fechaIngresoEmpresa = usuVO.getFechaIngresoEmpresa();
            tipoDeVinculacion = usuVO.getTipoDeVinculacion();

        } catch (Exception e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {

        try {

            sql = "insert  into Usuario (idUsuario,idTipoDoc,idRol,idCargo,"
                    + "idAFP,idARP,idEPS,idMunicipio,"
                    + "tipoSangre,nombreUsuario,apellidoUsuario,noDocumentoUsuario,"
                    + "telefonoUsuario,correoUsuario,fechaNaciUsuario,estado,contraseñaUsuario,"
                    + "loginUsuario,sexo,direccion,jornada,fechaIngresoEmpresa,tipoDeVinculacion) "
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idUsuario);
            puente.setString(2, idTipoDoc);
            puente.setString(3, idRol);
            puente.setString(4, idCargo);
            puente.setString(5, idAFP);
            puente.setString(6, idARP);
            puente.setString(7, idEPS);
            puente.setString(8, idMunicipio);
            puente.setString(9, tipoSangre);
            puente.setString(10, nombreUsuario);
            puente.setString(11, apellidoUsuario);
            puente.setString(12, noDocumentoUsuario);
            puente.setString(13, telefonoUsuario);
            puente.setString(14, correoUsuario);
            puente.setString(15, fechaNaciUsuario);
            puente.setString(16, estado);
            puente.setString(17, contraseñaUsuario);
            puente.setString(18, loginUsuario);
            puente.setString(19, sexo);
            puente.setString(20, direccion);
            puente.setString(21, jornada);
            puente.setString(22, fechaIngresoEmpresa);
            puente.setString(23, tipoDeVinculacion);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;

    }

    @Override
    public boolean actualizarRegistro() {
        try {

            sql = "update Usuario set  idTipoDoc=?,idRol=?,idCargo=?,idAFP=?,idARP=?,"
                    + "idEPS=?,idMunicipio=?,tipoSangre=?,nombreUsuario=?,apellidoUsuario=?,noDocumentoUsuario=?,"
                    + "telefonoUsuario=?,correoUsuario=?,fechaNaciUsuario=?,estado=?,contraseñaUsuario=?,loginUsuario=?,"
                    + "sexo=?,direccion=?,jornada=?,fechaIngresoEmpresa=?,tipoDeVinculacion=?, where idUsuario=?";
            puente.setString(1, idTipoDoc);
            puente.setString(2, idRol);
            puente.setString(3, idCargo);
            puente.setString(4, idAFP);
            puente.setString(5, idARP);
            puente.setString(6, idEPS);
            puente.setString(7, idMunicipio);
            puente.setString(8, tipoSangre);
            puente.setString(9, nombreUsuario);
            puente.setString(10, apellidoUsuario);
            puente.setString(11, noDocumentoUsuario);
            puente.setString(12, telefonoUsuario);
            puente.setString(13, correoUsuario);
            puente.setString(14, fechaNaciUsuario);
            puente.setString(15, estado);
            puente.setString(16, contraseñaUsuario);
            puente.setString(17, loginUsuario);
            puente.setString(18, sexo);
            puente.setString(19, direccion);
            puente.setString(20, jornada);
            puente.setString(21, fechaIngresoEmpresa);
            puente.setString(22, tipoDeVinculacion);
            puente.setString(23, idUsuario);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();

            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }

        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public UsuarioVO consultarUsuario(String placa) {
        UsuarioVO vehVO = null; 

        try {
            conexion = this.obtenerConexion();
            sql = "select * from usuario where , ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, placa);
            mensajero = puente.executeQuery();
            
            while (mensajero.next()) {
               /* vehVO = new UsuarioVO(idUsuario, mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4),
                        mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7));*/
            }
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return vehVO;
    }


}
