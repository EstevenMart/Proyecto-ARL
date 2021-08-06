/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;
import ModeloVO.CargoVO;
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
public class CargoDAO extends Conexion {
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    private String sql;
    
    public ArrayList<CargoVO> listar(){
      ArrayList<CargoVO> listaCargo = new ArrayList<>();
        
        try {
            conexion = this.obtenerConexion();
            sql = " select * from Cargo ";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            
            while(mensajero.next()){
                CargoVO cargoVO = new CargoVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3), mensajero.getString(4),mensajero.getString(5) );
                listaCargo.add(cargoVO);
                
            }
            
        } catch (SQLException e) {
        Logger.getLogger(CargoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaCargo;
    }

}
