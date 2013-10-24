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
		List<String> listaSportow = new ArrayList<String>();
		for(String s: osoba.getSporty()){
			listaSportow.add(s);
		}
		nowaOsoba.setSporty(listaSportow);
		bazaLudzi.add(nowaOsoba);
		osoba.getSporty().clear();
	}
	
	public List<Osoba> getLudzie(){
		return bazaLudzi;
	}
}
