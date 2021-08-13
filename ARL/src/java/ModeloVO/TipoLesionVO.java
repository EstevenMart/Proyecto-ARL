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
public class TipoLesionVO {
    
    private String idTipoLesion, DenoTipoLesion;

    public TipoLesionVO(String idTipoLesion, String DenoTipoLesion) {
        this.idTipoLesion = idTipoLesion;
        this.DenoTipoLesion = DenoTipoLesion;
    }

    public TipoLesionVO() {
    }

    public String getIdTipoLesion() {
        return idTipoLesion;
    }

    public void setIdTipoLesion(String idTipoLesion) {
        this.idTipoLesion = idTipoLesion;
    }

    public String getDenoTipoLesion() {
        return DenoTipoLesion;
    }

    public void setDenoTipoLesion(String DenoTipoLesion) {
        this.DenoTipoLesion = DenoTipoLesion;
    }
    
    
    
}