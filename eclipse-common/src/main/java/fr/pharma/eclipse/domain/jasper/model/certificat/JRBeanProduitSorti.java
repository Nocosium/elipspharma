package fr.pharma.eclipse.domain.jasper.model.certificat;

import fr.pharma.eclipse.domain.jasper.model.common.JasperReportBean;
import fr.pharma.eclipse.jasper.constants.JasperConstants;

/**
 * Classe représentant la source de données<br>
 * relative à un produit sorti pour un certificat.
 * @author Netapsys
 * @version $Revision$ $Date$
 */
public class JRBeanProduitSorti implements JasperReportBean {

    /**
     * Serial ID.
     */
    private static final long serialVersionUID = 5788689516409793037L;

    /**
     * Dénomination.
     */
    private String descriptif = JasperConstants.DEFAULT_FIELD_VALUE;

    /**
     * Num de lot.
     */
    private String numLot = JasperConstants.DEFAULT_FIELD_VALUE;

    /**
     * Num de traitement.
     */
    private String numTraitement = JasperConstants.DEFAULT_FIELD_VALUE;

    /**
     * Date.
     */
    private String date = JasperConstants.DEFAULT_FIELD_VALUE;

    /**
     * Quantite.
     */
    private String quantite = JasperConstants.DEFAULT_FIELD_VALUE;

    /**
     * Getter pour descriptif.
     * @return Le descriptif
     */
    public String getDescriptif() {
        return this.descriptif;
    }

    /**
     * Setter pour descriptif.
     * @param descriptif Le descriptif à écrire.
     */
    public void setDescriptif(final String descriptif) {
        this.descriptif = descriptif;
    }

    /**
     * Getter pour numLot.
     * @return Le numLot
     */
    public String getNumLot() {
        return this.numLot;
    }

    /**
     * Setter pour numLot.
     * @param numLot Le numLot à écrire.
     */
    public void setNumLot(final String numLot) {
        this.numLot = numLot;
    }

    /**
     * Getter pour numTraitement.
     * @return Le numTraitement
     */
    public String getNumTraitement() {
        return this.numTraitement;
    }

    /**
     * Setter pour numTraitement.
     * @param numTraitement Le numTraitement à écrire.
     */
    public void setNumTraitement(final String numTraitement) {
        this.numTraitement = numTraitement;
    }

    /**
     * Getter pour date.
     * @return Le date
     */
    public String getDate() {
        return this.date;
    }

    /**
     * Setter pour date.
     * @param date Le date à écrire.
     */
    public void setDate(final String date) {
        this.date = date;
    }

    /**
     * Getter pour quantite.
     * @return Le quantite
     */
    public String getQuantite() {
        return this.quantite;
    }

    /**
     * Setter pour quantite.
     * @param quantite Le quantite à écrire.
     */
    public void setQuantite(final String quantite) {
        this.quantite = quantite;
    }

}
