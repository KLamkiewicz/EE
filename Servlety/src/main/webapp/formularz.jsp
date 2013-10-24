<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formularz osobowy</title>
</head>
<body>
<jsp:useBean id="osoba" class="pl.Servlet.domain.Osoba" scope="session" />

	<form action = "dodajOsobe.jsp">
		<h2 align = "center"> Formularz osobowy </h2><br><br>
		
		Imie: <input type = "text" name = "imie"> <br>
		
		Nazwisko: <input type = "text" name = "nazwisko"> <br><br>
		
		Plec: <br>
		 <input type = "radio" name ="plec" value="kobieta">Kobieta<br>
		 <input type = "radio" name ="plec" value="mezczyzna">Mezczyzna<br><br>
		 
		Wybierz ulubione sporty: <br>
		<input type = "checkbox" name = "sport" value="Pilka nozna"> Pilka nozna<br>
		<input type = "checkbox" name = "sport" value="Koszykowka"> Koszykowka<br>
		<input type = "checkbox" name = "sport" value="Hokej"> Hokej<br>
		sss
		<br>
		Wybierz ulubione kwiatki: <br>
		<select name="kwiaty" size="4" multiple>
			<option value="tulipan">Tulipan</option>
	        <option value="begonia">Begonia</option>
	        <option value="chryzantemy">Chryzantemy</option>
		    <option value="nienawidze kwiatkow">Nienawidze kwiatkow</option>
		</select>
		<br>
		<br>
		
		Uwagi: <br><TEXTAREA name="uwagi" ROWS="4" cols="55"></TEXTAREA><br>
		<p><input type="submit" value="Wyslij ">
	</form>


	
</body>
</html>