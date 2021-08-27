/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author luisa
 */
public class AccidenteTipoLesionVO {
    
    private String idAccidente, idTipoLesion;

    public AccidenteTipoLesionVO(String idAccidente, String idTipoLesion) {
        this.idAccidente = idAccidente;
        this.idTipoLesion = idTipoLesion;
    }

    public AccidenteTipoLesionVO() {
    }

    public String getIdAccidente() {
        return idAccidente;
    }

    public void setIdAccidente(String idAccidente) {
        this.idAccidente = idAccidente;
    }

    public String getIdTipoLesion() {
        return idTipoLesion;
    }

    public void setIdTipoLesion(String idTipoLesion) {
        this.idTipoLesion = idTipoLesion;
    }
            
            
        
    
}