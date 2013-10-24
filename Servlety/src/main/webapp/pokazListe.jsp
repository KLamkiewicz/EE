<%@page import="pl.Servlet.domain.Osoba"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="przechowalniaLudzi" class="pl.Servlet.service.PrzechowalniaLudzi" scope="application" />
<br>
<%
for(Osoba o : przechowalniaLudzi.getLudzie()){
	out.println("<p> Imie: "+o.getImie() +"<br>" );
	out.println(" Nazwisko: " +o.getNazwisko()+"<br>");
	out.println("Plec: " + o.getPlec()+"<p>");
	out.println("<p>Sporty:"+"<br>");
	for(String sport: o.getSporty()){
		out.println(sport);
		out.println("<br>");
	}
	out.println("<br>Uwagi: ");
	out.println("<br>"+ o.getUwagi()+"<p>");
	out.println("<br><hr>");
}
%><br>

  <a href="formularz.jsp">Dodaj kolejna osobe</a>

</body>
</html>