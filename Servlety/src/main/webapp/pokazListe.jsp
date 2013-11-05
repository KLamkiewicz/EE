<%@page import="pl.servlet.domain.Osoba"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="przechowalniaLudzi" class="pl.servlet.service.PrzechowalniaLudzi" scope="application" />
<br>
<%
for(Osoba o : przechowalniaLudzi.getLudzie()){
	out.println("<br> Imie: <br>");
	if(o.getImie()!=null)
	out.println(o.getImie() +"<br>" );
	out.println(" Nazwisko: <br>");
	if(o.getNazwisko()!=null)
	out.println(o.getNazwisko()+"<br>");
	out.println("Plec: <br>");
	if(o.getPlec()!=null)
	out.println(o.getPlec()+"<br>");
	out.println("<br>Sporty:"+"<br>");
	for(String sport: o.getSporty()){
		if(sport!=null){
			out.println(sport);
			out.println("<br>");
		}
	}
	out.println("<br>Kwiatki:"+"<br>");
	for(String sport: o.getKwiatki()){
		if(sport!=null){
			out.println(sport);
			out.println("<br>");
		}
	}
	
	out.println("<br>Uwagi: ");
	if(o.getUwagi()!=null)
		out.println("<br>"+ o.getUwagi()+"<br>");
	out.println("<br><hr>");
}
%><br>

  <a href="formularz.jsp">Dodaj kolejna osobe</a>

</body>
</html>