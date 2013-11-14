package pl.servlet.domain;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.faces.validator.LengthValidator;


public class Osoba {
	private String imie;
	private String nazwisko;
	private String uwagi;
	private String plec;	
	private String[] sporty;
	private String[] kwiatki;
	
	public enum sportyE{
		Koszykowka("Koszykowka"),
		Hokej("Hokej"),
		Badminton("Badminton"),
		Pilka("Pilka nozna");
		
		String nazwa;
		private sportyE(String nazwa) {
			this.nazwa = nazwa;
		}
		
		@Override
		public String toString() {
			return nazwa;
		}
	}
	public enum kwiatkiE{
		Tulipan,
		Begonia,
		Chryzantemy,
		Roza;
	}
	public enum plecE{
		Kobieta,
		Mezczyzna;
	}
	
	public Osoba(){
		sporty = new String[sportyE.values().length];
		kwiatki = new String[kwiatkiE.values().length];
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



