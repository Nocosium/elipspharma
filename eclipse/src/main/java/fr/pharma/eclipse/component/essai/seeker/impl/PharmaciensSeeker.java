package fr.pharma.eclipse.component.essai.seeker.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;

import fr.pharma.eclipse.component.essai.TypeContact;
import fr.pharma.eclipse.component.essai.seeker.SelectableContactsSeeker;
import fr.pharma.eclipse.domain.criteria.acteur.PersonneSearchCriteria;
import fr.pharma.eclipse.domain.criteria.acteur.PharmacienSearchCriteria;
import fr.pharma.eclipse.domain.model.acteur.Personne;
import fr.pharma.eclipse.domain.model.acteur.Pharmacien;
import fr.pharma.eclipse.domain.model.essai.Essai;
import fr.pharma.eclipse.domain.model.stockage.Pharmacie;
import fr.pharma.eclipse.service.common.GenericService;

/**
 * Classe en charge de rechercher les pharmaciens sélectionnables pour l'essai.
 * @author Netapsys
 * @version $Revision$ $Date$
 */
public class PharmaciensSeeker implements SelectableContactsSeeker, BeanFactoryAware {

    /**
     * Serial ID.
     */
    private static final long serialVersionUID = -2276338603861010469L;

    /**
     * Fabrique Spring.
     */
    private BeanFactory beanFactory;

    /**
     * Service spécifique à la classe.
     */
    private GenericService<Pharmacien> service;

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean supports(final TypeContact typeContact) {
        return TypeContact.PHARMACIEN.equals(typeContact);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<Personne> getContacts(final Essai essai) {
        return new ArrayList<Personne>(this.service.getAll(this.getSearchCriteria(essai)));
    }

    /**
     * Méthode en charge de préparer un critère de recherche qui permet<br>
     * de récupérer des contacts ajoutables à un essai.
     * @param essai Essai pour lequel on souhaite ajouter des contacts.
     * @return Le critère de recherche qui permet de récupérer les contacts.
     */
    private PersonneSearchCriteria getSearchCriteria(final Essai essai) {
        final PharmacienSearchCriteria criteria = (PharmacienSearchCriteria) this.beanFactory.getBean("pharmacienCriteria");
        final List<Pharmacie> pharmacies = new ArrayList<Pharmacie>();
        pharmacies.add(essai.getPharmaciePrincipale());
        pharmacies.addAll(essai.getDetailDonneesPharma().getPharmacies());
        criteria.setPharmacies(pharmacies);
        return criteria;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void setBeanFactory(final BeanFactory beanFactory) throws BeansException {
        this.beanFactory = beanFactory;
    }

    /**
     * Getter sur beanFactory.
     * @return Retourne le beanFactory.
     */
    BeanFactory getBeanFactory() {
        return this.beanFactory;
    }

    /**
     * Getter sur service.
     * @return Retourne le service.
     */
    GenericService<Pharmacien> getService() {
        return this.service;
    }

    /**
     * Setter pour service.
     * @param service le service à écrire.
     */
    public void setService(final GenericService<Pharmacien> service) {
        this.service = service;
    }
}
