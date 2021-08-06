/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;
import ModeloVO.MunicipioVO;
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
public class MunicipioDAO extends Conexion {
      private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    private String sql;
    
    public ArrayList<MunicipioVO> listar(){
      ArrayList<MunicipioVO> listaMunicipio = new ArrayList<>();
        
        try {
            conexion = this.obtenerConexion();
            sql = " select * from municipio ";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            
            while(mensajero.next()){
                MunicipioVO municipioVO = new MunicipioVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3) );
                listaMunicipio.add(municipioVO);
                
            }
            
        } catch (SQLException e) {
        Logger.getLogger(MunicipioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaMunicipio;
    }

}
