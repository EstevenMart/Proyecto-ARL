/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Usuario
 */
public class SitioVO {
private String idSitio, denominaionSitio;

    public SitioVO() {
    }
 
    public SitioVO(String idSitio, String denominaionSitio) {
        this.idSitio = idSitio;
        this.denominaionSitio = denominaionSitio;
    }
  
    public String getIdSitio() {
        return idSitio;
    }

    public void setIdSitio(String idSitio) {
        this.idSitio = idSitio;
    }

    public String getDenominaionSitio() {
        return denominaionSitio;
    }

    public void setDenominaionSitio(String denominaionSitio) {
        this.denominaionSitio = denominaionSitio;
    }
   
    
}