<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session = "true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>-- Gra - tabliczka mnożenia --</title>
        <link rel="Stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        
        <%
            session.setAttribute("szanse", 3);
            session.setAttribute("bonus", 0);
            session.setAttribute("czas", 10);
            session.setAttribute("punkty", 0);
        %>
        
        <h1>Sprawdź znajomość tabliczki mnożenia !</h1>
        <p>Zadaniem gracza jest odpowiadanie na pytanie ile to jest X*Y.<br> 
            Po każdorazowej poprawnej odpowiedzi gracz otrzymuje punkt, w przypadku udzielenia niepoprawnej odpowiedzi traci jedną z szans.<br>
            Na każdą z odpowiedzi gracz ma określony czas.<br>
            Po "utracie" wszystkich szans, gracz zostaje poinformowany o ostatecznym wyniku.
            Gracz zaczyna z 3 szansami, i czasem 10s<br>
        </p>
        
        <a href="sprawdz.jsp">Rozpocznij</a>
        
    </body>
</html>
