/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/oblicz"})
public class oblicz extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<link rel=\"Stylesheet\" type=\"text/css\" href=\"style.css\" />");
            
            
            int wynik_p = Integer.parseInt(request.getParameter("wynikw"));
            int wynik_o = Integer.parseInt(request.getParameter("wyniko"));
            
            
            Cookie c[]=request.getCookies(); 
            int s_punkty=Integer.parseInt(c[1].getValue());
            int ilosc_szans=Integer.parseInt(c[0].getValue());
            
            
            
            //out.println(wynik_p);
            //out.println(wynik_o);
            //out.println(ilosc_szans);
            
            if (wynik_p==wynik_o){
                    out.println("Prawidłowo ! Zdobywasz punkt.<br>");
                    s_punkty=s_punkty+1;
                    Cookie punkty = new Cookie("punkty", String.valueOf(s_punkty));
                    response.addCookie(punkty);
                    out.println("Pozostało szans: "+c[0].getValue());
                    out.println("<br><a href='sprawdz.jsp'>Dalej</a>");
                }
                else if (ilosc_szans>0){
                    out.println("Błędny wynik. Tracisz szansę.<br>");
                    ilosc_szans=ilosc_szans-1;
                    Cookie szanse = new Cookie("szanse", String.valueOf(ilosc_szans));
                    response.addCookie(szanse);
                    out.println("Pozostałe szanse: "+ c[0].getValue());
                    out.println("<br><a href='sprawdz.jsp'>Dalej</a>");
                }
                else if (ilosc_szans==0){
                    out.println("Przegrałeś.<br> Suma punktów: "+c[1].getValue());
                    out.println("<br><a href='sprawdz.jsp'>Spróbuj ponownie</a>");
                }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
