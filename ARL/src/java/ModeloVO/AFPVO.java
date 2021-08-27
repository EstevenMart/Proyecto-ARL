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
public class AFPVO {
     private String idAFP, denominacionAFP;
    

    public AFPVO() {
    }

    public AFPVO(String idAFP, String denominacionAFP) {
        this.idAFP = idAFP;
        this.denominacionAFP = denominacionAFP;
    }

    public String getIdAFP() {
        return idAFP;
    }

    public void setIdAFP(String idAFP) {
        this.idAFP = idAFP;
    }

    public String getDenominacionAFP() {
        return denominacionAFP;
    }

    public void setDenominacionAFP(String denominacionAFP) {
        this.denominacionAFP = denominacionAFP;
    }
   
    
}
