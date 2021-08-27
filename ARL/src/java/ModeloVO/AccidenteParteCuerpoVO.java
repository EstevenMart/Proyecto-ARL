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
public class AccidenteParteCuerpoVO {
    
    private String idAccidente, idParteCuerpo;

    public AccidenteParteCuerpoVO(String idAccidente, String idParteCuerpo) {
        this.idAccidente = idAccidente;
        this.idParteCuerpo = idParteCuerpo;
    }

    public AccidenteParteCuerpoVO() {
    }

    public String getIdAccidente() {
        return idAccidente;
    }

    public void setIdAccidente(String idAccidente) {
        this.idAccidente = idAccidente;
    }

    public String getIdParteCuerpo() {
        return idParteCuerpo;
    }

    public void setIdParteCuerpo(String idParteCuerpo) {
        this.idParteCuerpo = idParteCuerpo;
    }
    
    
    
}