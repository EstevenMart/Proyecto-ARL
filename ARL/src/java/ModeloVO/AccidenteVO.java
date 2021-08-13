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
public class AccidenteVO {
    private String idAccididente, idMecanismo, idAgentAcci, idSitio,
            tipoaccidente, fechaHora, dia, jornada, laborHabitual, tiempoPA,
            cantHoras,cantMinutos,empresa,causaMuerte,descripcion; 

    public AccidenteVO() {
    }

    public AccidenteVO(String idAccididente, String idMecanismo, String idAgentAcci, String idSitio, String tipoaccidente, String fechaHora, String dia, String jornada, String laborHabitual, String tiempoPA, String cantHoras, String cantMinutos, String empresa, String causaMuerte, String descripcion) {
        this.idAccididente = idAccididente;
        this.idMecanismo = idMecanismo;
        this.idAgentAcci = idAgentAcci;
        this.idSitio = idSitio;
        this.tipoaccidente = tipoaccidente;
        this.fechaHora = fechaHora;
        this.dia = dia;
        this.jornada = jornada;
        this.laborHabitual = laborHabitual;
        this.tiempoPA = tiempoPA;
        this.cantHoras = cantHoras;
        this.cantMinutos = cantMinutos;
        this.empresa = empresa;
        this.causaMuerte = causaMuerte;
        this.descripcion = descripcion;
    }

    public String getIdAccididente() {
        return idAccididente;
    }

    public void setIdAccididente(String idAccididente) {
        this.idAccididente = idAccididente;
    }

    public String getIdMecanismo() {
        return idMecanismo;
    }

    public void setIdMecanismo(String idMecanismo) {
        this.idMecanismo = idMecanismo;
    }

    public String getIdAgentAcci() {
        return idAgentAcci;
    }

    public void setIdAgentAcci(String idAgentAcci) {
        this.idAgentAcci = idAgentAcci;
    }

    public String getIdSitio() {
        return idSitio;
    }

    public void setIdSitio(String idSitio) {
        this.idSitio = idSitio;
    }

    public String getTipoaccidente() {
        return tipoaccidente;
    }

    public void setTipoaccidente(String tipoaccidente) {
        this.tipoaccidente = tipoaccidente;
    }

    public String getFechaHora() {
        return fechaHora;
    }

    public void setFechaHora(String fechaHora) {
        this.fechaHora = fechaHora;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getJornada() {
        return jornada;
    }

    public void setJornada(String jornada) {
        this.jornada = jornada;
    }

    public String getLaborHabitual() {
        return laborHabitual;
    }

    public void setLaborHabitual(String laborHabitual) {
        this.laborHabitual = laborHabitual;
    }

    public String getTiempoPA() {
        return tiempoPA;
    }

    public void setTiempoPA(String tiempoPA) {
        this.tiempoPA = tiempoPA;
    }

    public String getCantHoras() {
        return cantHoras;
    }

    public void setCantHoras(String cantHoras) {
        this.cantHoras = cantHoras;
    }

    public String getCantMinutos() {
        return cantMinutos;
    }

    public void setCantMinutos(String cantMinutos) {
        this.cantMinutos = cantMinutos;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getCausaMuerte() {
        return causaMuerte;
    }

    public void setCausaMuerte(String causaMuerte) {
        this.causaMuerte = causaMuerte;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
 }

    


    