<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formularz osobowy</title>
</head>
<body>
<jsp:useBean id="osoba" class="pl.servlet.domain.Osoba" scope="session" />
<%
boolean go = ((osoba.getSporty()[0]!=null)?true:false); 
boolean goK = ((osoba.getKwiatki()[0]!=null)?true:false);
int len = osoba.getSporty().length;
int lenK = osoba.getKwiatki().length;
%>
	<form action = "sprawdzenie.jsp">
		<h2 align = "center"> Formularz osobowy </h2><br><br>
		
		Imie: <input type = "text" name = "imie" value="${osoba.imie}">  <br>
		
		Nazwisko: <input type = "text" name = "nazwisko" value="${osoba.nazwisko}" > <br><br>
		
		Plec: <br>
		 <input type = "radio" name ="plec" value="kobieta" <%if(osoba.getPlec()!=null) if(osoba.getPlec().equals("kobieta"))out.print("Checked");%>>Kobieta<br>
		 <input type = "radio" name ="plec" value="mezczyzna" <%if(osoba.getPlec()!=null)if(osoba.getPlec().equals("mezczyzna"))out.print("Checked");%>>Mezczyzna<br><br>
		 
		Wybierz ulubione sporty: <br>
		
		<input type = "checkbox" name = "sporty" value="Pilka nozna" 
		<%if(go)
			for(int i=0; i<len; i++)
				if(osoba.getSporty()[i].equals("Pilka nozna"))
					out.print("Checked");%>> Pilka nozna<br>
		
		<input type = "checkbox" name = "sporty" value="Koszykowka"
		<%if(go)
			for(int i=0; i<len; i++)
				if(osoba.getSporty()[i].equals("Koszykowka"))
					out.print("Checked");%>> Koszykowka<br>
		
		<input type = "checkbox" name = "sporty" value="Hokej"
		<%if(go)
			for(int i=0; i<len; i++)
				if(osoba.getSporty()[i].equals("Hokej"))
					out.print("Checked");%>> Hokej<br>
		
		<br>
		Wybierz ulubione kwiatki: <br>
		<select name="kwiatki" size="4" multiple>
		<option value="Tulipan"
		<%if(goK)
			for(int i=0; i<lenK; i++)
				if(osoba.getKwiatki()[i].equals("Tulipan"))
					out.print("selected");%>>Tulipan</option>
			
        <option value="Begonia"
		<%if(goK)
			for(int i=0; i<lenK; i++)
				if(osoba.getKwiatki()[i].equals("Begonia"))
					out.print("selected");%>>Begonia</option>
		
        <option value="Chryzantemy"
		<%if(goK)
			for(int i=0; i<lenK; i++)
				if(osoba.getKwiatki()[i].equals("Chryzantemy"))
					out.print("selected");%>>Chryzantemy</option>
		
	    <option value="Nienawidze kwiatkow"
		<%if(goK)
			for(int i=0; i<lenK; i++)
				if(osoba.getKwiatki()[i].equals("Nienawidze kwiatkow"))
					out.print("selected");%>>Nienawidze kwiatkow</option>
		</select>
		<br>
		<br>
		
		Uwagi: <br><TEXTAREA name="uwagi" ROWS="4" cols="55">${osoba.getUwagi()}</TEXTAREA><br>
		<p><input type="submit" value="Wyslij ">
	</form>
	
<%osoba.setSporty(new String[4]);%>
<%osoba.setKwiatki(new String[4]);%>

</body>
</html>