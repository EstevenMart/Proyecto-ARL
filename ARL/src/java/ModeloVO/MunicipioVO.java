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
public class MunicipioVO {
    
   private String idMunicipio, idDepartamento, denominacionMunicipio;

    public String getIdMunicipio() {
        return idMunicipio;
    }

    public void setIdMunicipio(String idMunicipio) {
        this.idMunicipio = idMunicipio;
    }

    public String getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(String idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getDenominacionMunicipio() {
        return denominacionMunicipio;
    }

    public void setDenominacionMunicipio(String denominacionMunicipio) {
        this.denominacionMunicipio = denominacionMunicipio;
    }

    public MunicipioVO(String idMunicipio, String idDepartamento, String denominacionMunicipio) {
        this.idMunicipio = idMunicipio;
        this.idDepartamento = idDepartamento;
        this.denominacionMunicipio = denominacionMunicipio;
    }

    public MunicipioVO() {
    }
   
   
   
}