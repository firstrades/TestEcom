package ecom.model;

import java.io.Serializable;
import java.util.List;

public class FirstPageProducts implements Serializable {
	private static final long serialVersionUID = -6621129318943330690L;
	
	
	protected List<Product> electronics;
	protected List<Product> men;
	protected List<Product> women; 
	protected List<Product> herbal;  
	protected List<Product> babyAndKids;
	
	
	
	public List<Product> getElectronics() {
		return electronics;
	}
	public List<Product> getMen() {
		return men;
	}
	public List<Product> getWomen() {
		return women;
	}
	public List<Product> getHerbal() {
		return herbal;
	}
	public List<Product> getBabyAndKids() {
		return babyAndKids;
	}
	public void setElectronics(List<Product> electronics) {
		this.electronics = electronics;
	}
	public void setMen(List<Product> men) {
		this.men = men;
	}
	public void setWomen(List<Product> women) {
		this.women = women;
	}
	public void setHerbal(List<Product> herbal) {
		this.herbal = herbal;
	}
	public void setBabyAndKids(List<Product> babyAndKids) {
		this.babyAndKids = babyAndKids;
	}
	
	
}
