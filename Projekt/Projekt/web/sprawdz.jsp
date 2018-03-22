<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gra Tabliczka mnożenia</title>
        <link rel="Stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <%!
            int x;
            int y;
            int wynik;
        %>
        
        Ile to:<br>
        
        <%
            
            Random r1 = new Random();
            Random r2 = new Random();
            
            x = r1.nextInt(10);
            y = r2.nextInt(10);
            
            wynik=x*y;

            out.println(x+" * "+y);
        %>
        
        <form method="post" id="formularz" action="oblicz">
            <input type="number" name="wynikw" value="0"/>
            <input type="hidden" name="wyniko" value="<%= wynik %>"/>
            <input type="submit" name="submit" value="Wprowadź">
        </form>
        <p id="timer"></p>
        
        
        <script>
            var counter = <%= session.getAttribute("czas") %>;
            document.getElementById("timer").innerHTML = "Pozostało " +counter + " s";
            
            var x = setInterval(function() {
                counter--;
                if(counter < 0) {
                alert("Przegrana!");
                window.location="index.jsp";
                clearInterval(x);
                } else {
                document.getElementById("timer").innerHTML = "Pozostało " + counter + " s";
                }            
            }, 1000);
        </script>
        
    </body>
</html>
