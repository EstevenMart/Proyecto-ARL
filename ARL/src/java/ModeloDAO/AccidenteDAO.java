/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.AccidenteVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usuario
 */
public class AccidenteDAO extends Conexion implements Crud {
      private Connection Conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
     private boolean operacion= false;
    private String sql;
    
    public AccidenteDAO(){
    }
    
     private String idAccididente="", idMecanismo="", idAgentAcci="", idSitio="", tipoAccidente="",
             fechaHora="", dia="", jornada="",laborHabitual="", tiempoPA="", cantHoras="", 
             cantMinutos="",empresa="", causaMuerte="",descripcion="";
     
     public AccidenteDAO(AccidenteVO aciVO){
     super();
         try {
     Conexion = this.obtenerConexion();
     idAccididente= aciVO.getIdAccididente();
     idMecanismo= aciVO.getIdMecanismo();
     idAgentAcci= aciVO.getIdAgentAcci();
     idSitio= aciVO.getIdSitio();
     tipoAccidente= aciVO.getTipoaccidente();
     fechaHora= aciVO.getFechaHora();
     dia= aciVO.getDia();
     jornada= aciVO.getJornada();
     laborHabitual= aciVO.getLaborHabitual();
     tiempoPA= aciVO.getTiempoPA();
     cantHoras= aciVO.getCantHoras();
     cantMinutos= aciVO.getCantMinutos();
     empresa= aciVO.getEmpresa();
     causaMuerte= aciVO.getCausaMuerte();
     descripcion= aciVO.getDescripcion();
     
         } catch (Exception e) {
             Logger.getLogger(AccidenteDAO.class.getName()).log(Level.SEVERE, null, e);
         }
    
}
    @Override
    public boolean agregarRegistro() {
           try {
            sql= "insert into accidente (idAccididente, idMecanismo, idAgentAcci, idSitio,"
                    + " tipoaccidente, fechaHora, dia, jornada, laborHabitual,tiempoPA, cantHoras,cantMinutos,empresa"
                    + ",causaMuerte,descripcion )"
                    + " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
             puente= Conexion.prepareStatement(sql);
             puente.setString(1, idAccididente);
             puente.setString(2, idMecanismo);
             puente.setString(3, idAgentAcci);
             puente.setString(4, idSitio);
             puente.setString(5,tipoAccidente);
             puente.setString(6, fechaHora);
             puente.setString(7, dia);
             puente.setString(8, jornada);
             puente.setString(9, laborHabitual);
             puente.setString(10, tiempoPA);
             puente.setString(11, cantHoras);
             puente.setString(12, cantMinutos);
             puente.setString(13, empresa);
             puente.setString(14, causaMuerte);
             puente.setString(15, descripcion);
             puente.executeUpdate();
             operacion=true;
             
        } catch (SQLException e) {
            Logger.getLogger(AccidenteDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
            }
    }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
       try {
            sql="user update set accidente tipoAccidente=?, fechaHora=?,"
                    + " dia=?, jornada=?, laborHabitual=?, tiempoPA=?,"
                    + " cantHoras=?, cantMinutos=?, empresa=?, causaMuerte=?,"
                    + "where idAccididente=?";
            puente= Conexion.prepareStatement(sql);
             puente.setString(1, tipoAccidente);
             puente.setString(2, fechaHora);
             puente.setString(3, dia);
             puente.setString(4, jornada);
             puente.setString(5,laborHabitual);
             puente.setString(6, tiempoPA);
             puente.setString(7, cantHoras);
             puente.setString(8, cantMinutos);
             puente.setString(9, empresa);
             puente.setString(10, causaMuerte);
             puente.setString(11, descripcion);
            
             puente.executeUpdate();
             operacion=true;
        } catch (SQLException e) {
             Logger.getLogger(AccidenteDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     public ArrayList<AccidenteVO> listar() {
        ArrayList<AccidenteVO> listarAccidente = new ArrayList<>();
        try {
            Conexion = this.obtenerConexion();
            sql = "select * from accidente";
            puente = Conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                 AccidenteVO aciVO = new AccidenteVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4),
                        mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7), mensajero.getString(8), mensajero.getString(9),
                        mensajero.getString(10), mensajero.getString(11), mensajero.getString(12),
                        mensajero.getString(13), mensajero.getString(14), mensajero.getString(15));
                listarAccidente.add(aciVO);

            }
        } catch (SQLException e) {
            Logger.getLogger(AccidenteDAO.class.getName()).log(Level.SEVERE, null, e);

        }finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(AccidenteDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listarAccidente;
}
     
     public AccidenteVO consultarAccidente(String Dia) {
        AccidenteVO aciVO = null; 

        try {
            Conexion = this.obtenerConexion();
            sql = "select * from accidente where dia =? ";
            puente = Conexion.prepareStatement(sql);
            puente.setString(1, Dia);
            mensajero = puente.executeQuery();
            
            while (mensajero.next()) {
                   aciVO = new AccidenteVO( idAccididente, mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4),
                        mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7), mensajero.getString(8), mensajero.getString(9)
                   , mensajero.getString(10), mensajero.getString(11), mensajero.getString(12)
                   , mensajero.getString(13), mensajero.getString(14),mensajero.getString(15));
            }
        } catch (SQLException e) {
            Logger.getLogger(AccidenteDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(AccidenteDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return aciVO;
    }
}