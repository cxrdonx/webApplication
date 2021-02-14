package controlador;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.*;
/**
 *
 * @author mared
 */

public class srvEvento extends HttpServlet {

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
    
        RequestDispatcher rd;
       String lugar = request.getParameter("lugarEv");
       String monto = request.getParameter("montoEv");
       String fecha = request.getParameter("fechaEv");
       String cantidad = request.getParameter("cantidadEv");
       String participantes = request.getParameter("participantesEv");
        String idPremiacion = request.getParameter("idPremiacionEv");
     //  int m = Integer.parseInt(Smonto);    
     //  int c = Integer.parseInt(Scantidad);
   
       
    
       
       
       
   //    csEvento e1 = new csEvento (Slugar,Sfecha,Sparticipantes,Smonto, Scantidad, sidPremiacion,nombre,descripcion,lugar);
       
    //      if(gestorBD.registrar(Slugar,Smonto,Sfecha,Scantidad,Sparticipantes)){
              request.getRequestDispatcher("/registroGuardado.jsp").forward(request,response);
   //       }finally{
   //               out.close();
                  }
    }
        
    

    