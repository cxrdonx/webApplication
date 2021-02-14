package modelo;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class csSubCategoria {
    
    private Connection conn;
    private Statement stm;
    private ResultSet rs;
    
 public csSubCategoria(){
     this.conn = null;
     this.stm = null;
 }

public int newSubCategoria(int mostraridCat,String nombre, String descripcion){
         int r = 0;
         conexion cn = new conexion();
         conn = cn.abrir();
         
         try{
             stm = conn.createStatement();
             r = stm.executeUpdate("insert into categoria(idCategoria,nombre, descripcion)"
                    +"+values(" + mostraridCat + ",'"+nombre+",'" + descripcion + "')");
            cn.cerrar();
            conn.close();
            stm.close();
            return r;
         }
         catch(Exception e){
             return 0;
         }
}
 
}