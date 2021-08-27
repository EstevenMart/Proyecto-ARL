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
public class MecanismoVO {
    
    private String idMecanismo, denominacionMecanismo;

    public MecanismoVO(String idMecanismo, String denominacionMecanismo) {
        this.idMecanismo = idMecanismo;
        this.denominacionMecanismo = denominacionMecanismo;
    }

    public MecanismoVO() {
    }

    public String getIdMecanismo() {
        return idMecanismo;
    }

    public void setIdMecanismo(String idMecanismo) {
        this.idMecanismo = idMecanismo;
    }

    public String getDenominacionMecanismo() {
        return denominacionMecanismo;
    }

    public void setDenominacionMecanismo(String denominacionMecanismo) {
        this.denominacionMecanismo = denominacionMecanismo;
    }
    
    
}