<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="osoba" class="pl.Servlet.domain.Osoba" scope="session" />
	<jsp:setProperty name="osoba" property="*" />
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