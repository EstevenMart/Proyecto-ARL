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
public class OtrasPersonasVO {
    
    private String idOtrasPersona, idAccidente, tipoDocumento, numDocumento, Cargo;

    public OtrasPersonasVO(String idOtrasPersona, String idAccidente, String tipoDocumento, String numDocumento, String Cargo) {
        this.idOtrasPersona = idOtrasPersona;
        this.idAccidente = idAccidente;
        this.tipoDocumento = tipoDocumento;
        this.numDocumento = numDocumento;
        this.Cargo = Cargo;
    }

    public OtrasPersonasVO() {
    }

    public OtrasPersonasVO(String string, String string0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


    public String getIdOtrasPersona() {
        return idOtrasPersona;
    }

    public void setIdOtrasPersona(String idOtrasPersona) {
        this.idOtrasPersona = idOtrasPersona;
    }

    public String getIdAccidente() {
        return idAccidente;
    }

    public void setIdAccidente(String idAccidente) {
        this.idAccidente = idAccidente;
    }

    public String getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public String getNumDocumento() {
        return numDocumento;
    }

    public void setNumDocumento(String numDocumento) {
        this.numDocumento = numDocumento;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }
    
    
    
}