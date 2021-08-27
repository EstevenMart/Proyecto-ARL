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
public class AgenteAccidenteVO {
    
    private String idAgenteAccidente, DenominacionAgeAccid;

    public AgenteAccidenteVO(String idAgenteAccidente, String DenominacionAgeAccid) {
        this.idAgenteAccidente = idAgenteAccidente;
        this.DenominacionAgeAccid = DenominacionAgeAccid;
    }

    public AgenteAccidenteVO() {
    }

    public String getIdAgenteAccidente() {
        return idAgenteAccidente;
    }

    public void setIdAgenteAccidente(String idAgenteAccidente) {
        this.idAgenteAccidente = idAgenteAccidente;
    }

    public String getDenominacionAgeAccid() {
        return DenominacionAgeAccid;
    }

    public void setDenominacionAgeAccid(String DenominacionAgeAccid) {
        this.DenominacionAgeAccid = DenominacionAgeAccid;
    }
    
    
}