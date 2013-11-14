<%@page import="pl.servlet.domain.Osoba.kwiatkiE"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="pl.servlet.domain.Osoba"%>
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
		

		Plec:<br>
		<%
			for(Osoba.plecE p : Osoba.plecE.values()){
				out.print("<input type=\"radio\" name=\"plec\" value = "+ p);
				if(osoba.getPlec()!=null)
					if(osoba.getPlec().equals(p.toString()))
						out.print(" Checked");
				out.print(">");
				out.print(p.toString()+"<br>");
			}
		%><br>
		
		
		Ulubione sporty:<br> 
		<%
			for(Osoba.sportyE s : Osoba.sportyE.values()){
				out.print(" <input type = \"checkbox\" name=\"sporty\" value = \"" + s.toString() + "\" ");
				if(go){
					for(int i=0; i<len; i++)
						if(osoba.getSporty()[i].equals(s.toString()))
							out.print("Checked");
				}
				out.print(" >" + s.toString() + " <br>");
			}
		%> <br>
		
		Ulubione kwiatki:<br> 
		<%
		out.print("<select name=\"kwiatki\" size="+ len + " multiple> ");
			for(Osoba.kwiatkiE k: Osoba.kwiatkiE.values()){
				out.print("<option value = \"" + k.toString() + "\" ");
					if(goK){
						for(int i=0; i<lenK; i++)
							if(osoba.getKwiatki()[i].equals(k.toString()))
								out.print(" selected");
					}
				out.print(">"+k.toString()+"</option>");
			}
		out.print("</select>");
		%><br><br>
		
		Uwagi: <br><TEXTAREA name="uwagi" ROWS="4" cols="55">${osoba.getUwagi()}</TEXTAREA><br>
		<p><input type="submit" value="Wyslij ">
	
	</form>
<!-- 
<%osoba.setSporty(new String[Osoba.sportyE.values().length]);%>
<%osoba.setKwiatki(new String[Osoba.kwiatkiE.values().length]);%>
 -->
</body>
</html>