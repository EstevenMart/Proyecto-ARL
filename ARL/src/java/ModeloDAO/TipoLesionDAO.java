/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.TipoLesionVO;
import Util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author luisa
 */
public class TipoLesionDAO extends Conexion {
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
     private String sql;
    
    public ArrayList<TipoLesionVO> Listar(){
    ArrayList<TipoLesionVO> ListaCategoria = new ArrayList<>(); 
        try {
            conexion = this.obtenerConexion();
            sql= "select * from tipolesion";
            puente= conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()){
           TipoLesionVO TiLeVO = new TipoLesionVO(mensajero.getString(1),
                   mensajero.getString(2));
                   ListaCategoria.add(TiLeVO);
    
}
             }
          catch (SQLException e) {
            Logger.getLogger(TipoLesionDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try {
                // this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(TipoLesionDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return ListaCategoria;
  
    } 
    
}