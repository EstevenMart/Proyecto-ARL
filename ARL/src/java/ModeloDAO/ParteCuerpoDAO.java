/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.ParteCuerpoVO;
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
public class ParteCuerpoDAO extends Conexion {
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
     private String sql;
    
    public ArrayList<ParteCuerpoVO> Listar(){
    ArrayList<ParteCuerpoVO> ListaCategoria = new ArrayList<>(); 
        try {
            conexion = this.obtenerConexion();
            sql= "select * from partecuerpo";
            puente= conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()){
           ParteCuerpoVO ParCueVO = new ParteCuerpoVO(mensajero.getString(1),
                   mensajero.getString(2));
                   ListaCategoria.add(ParCueVO);
    
}
             }
          catch (SQLException e) {
            Logger.getLogger(ParteCuerpoDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try {
                // this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ParteCuerpoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return ListaCategoria;
  
    } 
    
    
}