<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>-- Gra - tabliczka mnożenia --</title>
        <link rel="Stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        
        <%
            Cookie szanse = new Cookie("szanse", String.valueOf(3));
            response.addCookie(szanse);
            
            Cookie punkty = new Cookie("punkty", String.valueOf(0));
            response.addCookie(punkty);
        %>
        
        <h1>Sprawdź znajomość tabliczki mnożenia !</h1>
        <p>Zadaniem gracza jest odpowiadanie na pytanie ile to jest X*Y.<br> 
            Po każdorazowej poprawnej odpowiedzi gracz otrzymuje punkt, w przypadku udzielenia niepoprawnej odpowiedzi traci jedną z szans.<br>
            Na każdą z odpowiedzi gracz ma określony czas.<br>
            Po "utracie" wszystkich szans, gracz zostaje poinformowany o ostatecznym wyniku.<br>
        </p>
        
        <a href="sprawdz.jsp">Rozpocznij</a>
        
    </body>
</html>
