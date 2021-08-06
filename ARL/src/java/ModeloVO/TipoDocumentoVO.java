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
public class TipoDocumentoVO {
    
private String idTipoDoc, NombreTipoDoc;

    public TipoDocumentoVO() {
    }

    public TipoDocumentoVO(String idTipoDoc, String NombreTipoDoc) {
        this.idTipoDoc = idTipoDoc;
        this.NombreTipoDoc = NombreTipoDoc;
    }

    public String getIdTipoDoc() {
        return idTipoDoc;
    }

    public void setIdTipoDoc(String idTipoDoc) {
        this.idTipoDoc = idTipoDoc;
    }

    public String getNombreTipoDoc() {
        return NombreTipoDoc;
    }

    public void setNombreTipoDoc(String NombreTipoDoc) {
        this.NombreTipoDoc = NombreTipoDoc;
    }
     
     
}
