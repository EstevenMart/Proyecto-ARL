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
public class ARPVO {
      private String idARP, denominacionAFP;

    public ARPVO() {
    }

    public ARPVO(String idARP, String denominacionAFP) {
        this.idARP = idARP;
        this.denominacionAFP = denominacionAFP;
    }

    public String getIdARP() {
        return idARP;
    }

    public void setIdARP(String idARP) {
        this.idARP = idARP;
    }

    public String getDenominacionAFP() {
        return denominacionAFP;
    }

    public void setDenominacionAFP(String denominacionAFP) {
        this.denominacionAFP = denominacionAFP;
    }
   
     
     
}
