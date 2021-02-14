/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class csEvento {
    
    private Connection conn;
    private Statement stm;
    private ResultSet rs;
    
 public csEvento(){
     this.conn = null;
     this.stm = null;
 }




      public String buscarEvento(int idEvento){

 String resultado="";         
        conexion cn = new conexion();
        rs=null;
        try{
        conn=cn.abrir();
        stm=conn.createStatement();
        rs=stm.executeQuery("select * from evento where idEvento='" + idEvento + "' ");
        
        while (rs.next()){
            resultado= rs.getString("nombre")+"|"+
                    rs.getString("descripcion");
        }
        cn.cerrar();
        conn.close();
        stm.close();
        
       return resultado ;
    }
    catch(Exception e){
        return null;
    }
}
      
}