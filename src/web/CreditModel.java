package web;

public class CreditModel {

	private double montant;
	private int duree;
	private double taux;
	private double mentualite;
	public double getMontant() {
		return montant;
	}
	public void setMontant(double montant) {
		this.montant = montant;
	}
	public int getDuree() {
		return duree;
	}
	public void setDuree(int duree) {
		this.duree = duree;
	}
	public double getTaux() {
		return taux;
	}
	public void setTaux(double taux) {
		this.taux = taux;
	}
	public double getMentualite() {
		return mentualite;
	}
	public void setMentualite(double mentualite) {
		this.mentualite = mentualite;
	}
	public CreditModel(double montant, int duree, double taux, double mentualite) {
		super();
		this.montant = montant;
		this.duree = duree;
		this.taux = taux;
		this.mentualite = mentualite;
	}
	public CreditModel() {
		super();
	
	}
	
	
}
