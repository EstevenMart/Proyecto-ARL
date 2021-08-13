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
public class ParteCuerpoVO {
    
    private String idParteCuerpo, DenoParteCuerpo;

    public ParteCuerpoVO(String idParteCuerpo, String DenoParteCuerpo) {
        this.idParteCuerpo = idParteCuerpo;
        this.DenoParteCuerpo = DenoParteCuerpo;
    }

    public ParteCuerpoVO() {
    }

    public String getIdParteCuerpo() {
        return idParteCuerpo;
    }

    public void setIdParteCuerpo(String idParteCuerpo) {
        this.idParteCuerpo = idParteCuerpo;
    }

    public String getDenoParteCuerpo() {
        return DenoParteCuerpo;
    }

    public void setDenoParteCuerpo(String DenoParteCuerpo) {
        this.DenoParteCuerpo = DenoParteCuerpo;
    }
    
    
}