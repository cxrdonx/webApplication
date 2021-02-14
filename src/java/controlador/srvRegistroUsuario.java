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
import modelo.conexion2;
import modelo.csUsuario;

/**
 *
 * @author mared
 */
public class srvRegistroUsuario extends HttpServlet {

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
    
           String nombre = request.getParameter("nombreUs");
        String apellido = request.getParameter("apellidoUs");
        String usuario = request.getParameter("nickName");
        String correo = request.getParameter("correoUs");
        String telefono = request.getParameter("telefonoUs");
        String direccion = request.getParameter("direccionUs");
        String genero = request.getParameter("generoUs");
        String pswd = request.getParameter("passUs");
        String rol = usuario;
        
           
              
   
        if (nombre.equals("") || apellido.equals("")|| usuario.equals("")|| correo.equals("")){
            request.getRequestDispatcher("errorRegistro.jsp").forward(request, response);
        }
        else{
            int tel = 0;
            try{
             tel = Integer.parseInt(telefono);
            
            }catch(NumberFormatException tlf){
                String error ="solo numeros permitidos";
                request.getSession().setAttribute("error", error);
                 request.getRequestDispatcher("errorRegistro.jsp").forward(request, response);
            }
            csUsuario us1 = new csUsuario( usuario,nombre, apellido,direccion,correo,pswd, tel,genero,rol);
            conexion2 cn = new conexion2();
            
            if(cn.insertar(us1)>0){
                
                request.getRequestDispatcher("registroGuardado.jsp").forward(request, response);
           }else{
              request.getRequestDispatcher("errorRegistro.jsp"); 
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
