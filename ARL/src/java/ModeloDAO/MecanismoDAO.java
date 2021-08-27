/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.MecanismoVO;
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
public class MecanismoDAO extends Conexion {
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
     private String sql;
    
    public ArrayList<MecanismoVO> Listar(){
    ArrayList<MecanismoVO> ListaCategoria = new ArrayList<>(); 
        try {
            conexion = this.obtenerConexion();
            sql= "select * from mecanismo";
            puente= conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()){
           MecanismoVO MecaVO = new MecanismoVO(mensajero.getString(1),
                   mensajero.getString(2));
                   ListaCategoria.add(MecaVO);
    
}
             }
          catch (SQLException e) {
            Logger.getLogger(MecanismoDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally{
            try {
                // this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(MecanismoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return ListaCategoria;
  
    } 
    
}