<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodano osobe</title>
</head>
<body>
<jsp:useBean id="osoba" class="pl.Servlet.domain.Osoba" scope="session" />
<jsp:useBean id="przechowalniaLudzi" class="pl.Servlet.service.PrzechowalniaLudzi" scope="application"/>
<jsp:setProperty name="osoba" property="*" /> 

	<%osoba.setPlec(request.getParameter("plec")) ;%>
	<%osoba.addSport(request.getParameterValues("sport")); %>
	<%przechowalniaLudzi.add(osoba);%>
	
	<h3>Dodano osobe!</h3><br>
	<b>Imie:</b> ${osoba.getImie()} <br>
	<b>Nazwisko:</b> ${osoba.getNazwisko()} <br>
	<b>Plec:</b>${osoba.getPlec()}<br>
	<b>Uwagi:</b> ${osoba.getUwagi()}<br>
	<br>
	<br>
	<a href = "formularz.jsp"> Dodaj nastepna osobe</a><br>
	<a href = "pokazListe.jsp"> Pokaz liste wszystkich osob</a>
</body>
</html>