package pl.Servlet.domain;

import java.util.ArrayList;
import java.util.List;

public class Osoba {
	private String imie;
	private String nazwisko;
	private String uwagi;
	private String plec;
	private List<String> sporty = new ArrayList<String>();
	
	public Osoba(){
		
	}

	public String getImie() {
		return imie;
	}

	public void setImie(String imie) {
		this.imie = imie;
	}

	public String getNazwisko() {
		return nazwisko;
	}

	public void setNazwisko(String nazwisko) {
		this.nazwisko = nazwisko;
	}

	public String getUwagi() {
		return uwagi;
	}

	public void setUwagi(String uwagi) {
		this.uwagi = uwagi;
	}

	public String getPlec() {
		return plec;
	}

	public void setPlec(String plec) {
		this.plec = plec;
	}

	public List<String> getSporty() {
		return sporty;
	}
	
	public void addSport(String[] sport){
		for(String s: sport){
			this.sporty.add(s);
		}
	}

	public void setSporty(List<String> sporty) {
		this.sporty = sporty;
	}
	
	
	
}
