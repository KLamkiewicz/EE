<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodano osobe</title>
</head>
<body>
<jsp:useBean id="osoba" class="pl.servlet.domain.Osoba" scope="session" />
<jsp:useBean id="przechowalniaLudzi" class="pl.servlet.service.PrzechowalniaLudzi" scope="application"/>
<jsp:setProperty name="osoba" property="*" /> 

	<%przechowalniaLudzi.add(osoba);%>
	
	<h3>Dodano osobe!</h3><br>
	<b>Imie:</b> ${osoba.getImie()} <br>
	<b>Nazwisko:</b> ${osoba.getNazwisko()} <br>
	<b>Plec:</b>${osoba.getPlec()}<br><br>
	<b>Ulubione sporty: </b><br>
		<%	
			int size = przechowalniaLudzi.getLudzie().size();
			for(String s: przechowalniaLudzi.getLudzie().get(size-1).getSporty()){
				if(s!=null)
				out.println(s+"<br>");
			}
				
		%><br>
	<b>Ulubione kwiatki:</b><br>
			<%	
			for(String s: przechowalniaLudzi.getLudzie().get(size-1).getKwiatki()){
				if(s!=null)
				out.println(s+"<br>");
			}
				
		%><br>
	<b>Uwagi:</b> ${osoba.getUwagi()}<br>
	<br>
	<br>
	<a href = "formularz.jsp"> Dodaj nastepna osobe</a><br>
	<a href = "pokazListe.jsp"> Pokaz liste wszystkich osob</a>
</body>
</html>