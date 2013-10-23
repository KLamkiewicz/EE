package pl.Servlet.service;

import java.util.ArrayList;
import java.util.List;

import pl.Servlet.domain.Osoba;


public class PrzechowalniaLudzi {
	
	private List<Osoba> bazaLudzi = new ArrayList<Osoba>();
	
	
	public void add(Osoba osoba){
		Osoba nowaOsoba = new Osoba();
		nowaOsoba.setImie(osoba.getImie());
		nowaOsoba.setNazwisko(osoba.getNazwisko());
		nowaOsoba.setPlec(osoba.getPlec());
		nowaOsoba.setUwagi(osoba.getUwagi());
		nowaOsoba.setSporty(osoba.getSporty());
		bazaLudzi.add(nowaOsoba);
	}
	
	public List<Osoba> getLudzie(){
		return bazaLudzi;
	}

}