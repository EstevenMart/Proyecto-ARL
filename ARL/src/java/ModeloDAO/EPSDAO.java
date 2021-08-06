/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;
import ModeloVO.EPSVO;
import ModeloVO.UsuarioVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Util.Conexion;
/**
 *
 * @author HP
 */
public class EPSDAO extends Conexion {
        private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    private String sql;
    
    public ArrayList<EPSVO> listar(){
      ArrayList<EPSVO> listaEPS = new ArrayList<>();
        
        try {
            conexion = this.obtenerConexion();
            sql = " select * from eps ";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            
            while(mensajero.next()){
                EPSVO epsVO = new EPSVO(mensajero.getString(1), mensajero.getString(2));
                listaEPS.add(epsVO);
                
            }
            
        } catch (SQLException e) {
        Logger.getLogger(EPSDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaEPS;
    }

    
}
