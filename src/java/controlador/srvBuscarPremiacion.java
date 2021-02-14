/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.*;
import estructuras.*;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author mared
 */
public class srvBuscarPremiacion extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            
                      RequestDispatcher rd;
                         int resp =0;
                         String mensaje;
                    Boolean encontrado = false;
                    
                  String idPremiacion = request.getParameter("txtidPremiacion");
                  String nombre = request.getParameter("txtNombre");
                  String descripcion = request.getParameter("txtDescripcion");
                  String lugar = request.getParameter("txtLugar");
               
                  csPremiacion p = new csPremiacion();
                  resp = p.updatePremiacion(Integer.parseInt(idPremiacion), nombre, descripcion, lugar);
             
            
                   request.setAttribute("respuesta", resp);
                   rd = request.getRequestDispatcher("PRUEBA.jsp");
                   rd.forward(request, response);
        }
               }
    
            
       /*     out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet srvBuscarPremiacion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet srvBuscarPremiacion at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */
        
  
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
