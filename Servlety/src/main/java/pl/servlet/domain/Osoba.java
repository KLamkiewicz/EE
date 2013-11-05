package pl.servlet.domain;

import java.util.ArrayList;
import java.util.List;


public class Osoba {
	private String imie;
	private String nazwisko;
	private String uwagi;
	private String plec;
	//private List<String> sporty = new ArrayList<String>();
	//private List<String> kwiatki = new ArrayList<String>();
	private String[] sporty = new String[4];
	private String[] kwiatki = new String[4];
	
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

	public String[] getSporty() {
		return sporty;
	}

	public void setSporty(String[] sporty) {
		this.sporty = sporty;
	}

	public String[] getKwiatki() {
		return kwiatki;
	}
	
	public void setKwiatki(String[] kwiatki) {
		this.kwiatki = kwiatki;
	}
	
}



