<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="osoba" class="pl.servlet.domain.Osoba" scope="session" />
	<jsp:setProperty name="osoba" property="*" />
	Czy na pewno chcesz dodac: <br><br><br>
	Imie: ${osoba.imie }<br>
	Nazwisko: ${osoba.nazwisko }<br>
	Plec:${osoba.plec}<br>
	<br>
	Sporty:<br> <%	
	for(String sport: osoba.getSporty()){
		if(sport!=null){
			out.println(sport);
			out.println("<br>");
		}
	} %>
	<br>
	Kwiatki: <br>
	<% 
	for(String sport: osoba.getKwiatki()){
		if(sport!=null){
			out.println(sport);
			out.println("<br>");
		}
	}
	%>
	<br>
	Uwagi:
	<%
	if(osoba.getUwagi()!=null)
		out.println("<br>"+ osoba.getUwagi()+"<br>");
	%>
	
	<br>
	
	<form action = "dodajOsobe.jsp">
		Dodaj dane<br> 
		<input type="submit" value="Dodaj">
	</form>
	
	<form action = "formularz.jsp">
		Edytuj dane<br>
		<input type="submit" value="Edytuj">
	</form>

</body>
</html>