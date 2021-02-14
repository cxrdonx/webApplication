/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class leerUsuarios {
      Connection conn = null;
    Statement stm = null;
    ResultSet rs; 
        int idUsuario;
        
       public leerUsuarios(){
           this.conn = null;
           this.stm = null;
      }
       public String consulta (int idUsuario){
           String perfil = "";
           conexion con = new conexion();
           conn = con.abrir();
           
           try{
               stm = conn.createStatement();
               rs = stm.executeQuery("DELETE FROM usuario WHERE= +"+idUsuario);
               
               while(rs.next()){
                   perfil = rs.getString("perfil");
               }
               con.cerrar();
               conn.close();
       }
           catch(Exception e){
               perfil = e.toString();
           }
    return perfil;
}
}
