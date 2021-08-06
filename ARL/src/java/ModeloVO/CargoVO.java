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
public class CargoVO {
     private String idCargo, nivelRiesgo, nombreCargo, estado, salario;

    public CargoVO() {
    }

    public CargoVO(String idCargo, String nivelRiesgo, String nombreCargo, String estado, String salario) {
        this.idCargo = idCargo;
        this.nivelRiesgo = nivelRiesgo;
        this.nombreCargo = nombreCargo;
        this.estado = estado;
        this.salario = salario;
    }

    public String getIdCargo() {
        return idCargo;
    }

    public void setIdCargo(String idCargo) {
        this.idCargo = idCargo;
    }

    public String getNivelRiesgo() {
        return nivelRiesgo;
    }

    public void setNivelRiesgo(String nivelRiesgo) {
        this.nivelRiesgo = nivelRiesgo;
    }

    public String getNombreCargo() {
        return nombreCargo;
    }

    public void setNombreCargo(String nombreCargo) {
        this.nombreCargo = nombreCargo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getSalario() {
        return salario;
    }

    public void setSalario(String salario) {
        this.salario = salario;
    }
   
    
}
