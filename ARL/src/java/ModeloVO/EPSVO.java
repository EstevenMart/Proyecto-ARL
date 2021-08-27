/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author HP
 */
public class EPSVO {

    private String idEPS, denominacionEPS;
    
    public EPSVO() {
    }

    public EPSVO(String idEPS, String denominacionEPS) {
        this.idEPS = idEPS;
        this.denominacionEPS = denominacionEPS;
    }

    public String getIdEPS() {
        return idEPS;
    }

    public void setIdEPS(String idEPS) {
        this.idEPS = idEPS;
    }

    public String getDenominacionEPS() {
        return denominacionEPS;
    }

    public void setDenominacionEPS(String denominacionEPS) {
        this.denominacionEPS = denominacionEPS;
    }
    
    
     
}
