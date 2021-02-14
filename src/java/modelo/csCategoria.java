/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import estructuras.categoria;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class csCategoria {
    
    private Connection conn;
    private Statement stm;
    private ResultSet rs;
    categoria categoriaHallada;
    String nom;
    String des;
    
    
 public csCategoria(){
     this.conn = null;
     this.stm = null;
 }

public int newCategoria(String nombre, String descripcion){
         int r = 0;
         conexion cn = new conexion();
         conn = cn.abrir();
         
         try{
             stm = conn.createStatement();
             r = stm.executeUpdate("insert into categoria(nombre,descripcion)"
                    +"+values('" + nombre + "','" + descripcion + "')");
            cn.cerrar();
            conn.close();
            stm.close();
            return r;
         }
         catch(Exception e){
             return 0;
         }
}
 public ArrayList <categoria> listadoCategoria()
    {
        ArrayList <categoria> categorias = new ArrayList<categoria>();
   
        try{  
       conexion cn = new conexion();
       conn = cn.abrir();
       stm = conn.createStatement();
        
        rs = stm.executeQuery("SELECT * FROM categoria");
       if (!rs.next()){
           System.out.println("no se encontraron registros");
           cn.cerrar();
           return null;
       }else{
            do{
                nom = rs.getString("nombre");
                des = rs.getString("descripcion"); 
          categoriaHallada = new categoria(nom, des);
         categorias.add(categoriaHallada);
            }while(rs.next());
              cn.cerrar();
               return categorias;
            }
        }catch(Exception e){
            System.out.println("error");
            e.printStackTrace();
            return null;
        }
    }
 
 

      public String buscarCategoria(int idCategoria){

 String resultado="";         
        conexion cn = new conexion();
        rs=null;
        try{
        conn=cn.abrir();
        stm=conn.createStatement();
        rs=stm.executeQuery("select * from categoria where idCategoria='" + idCategoria + "' ");
        
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