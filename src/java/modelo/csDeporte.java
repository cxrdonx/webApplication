package modelo;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class csDeporte {
    
    private Connection conn;
    private Statement stm;
    private ResultSet rs;
    
 public csDeporte(){
     this.conn = null;
     this.stm = null;
 }

public int newcsDeporte(int idSubCategoria, String descripcion, String genero, int edad, int cantidad, String participantes){
         int r = 0;
         conexion cn = new conexion();
         conn = cn.abrir();
         
         try{
             stm = conn.createStatement();
             r = stm.executeUpdate("insert into deporte(idSubCategoria, descripcion, genero, edad, cantidad,participantes)"
                    +"+values(" + idSubCategoria + ",'" + descripcion + "','" + genero + "'," +  edad+ "," + cantidad + ",'" + participantes + "')");
            cn.cerrar();
            conn.close();
            stm.close();
            return r;
         }
         catch(Exception e){
             return 0;
         }
}

    


      public String buscarDeporte(int idDeporte){

 String resultado="";         
        conexion cn = new conexion();
        rs=null;
        try{
        conn=cn.abrir();
        stm=conn.createStatement();
        rs=stm.executeQuery("select * from deporete where idDeporte='" + idDeporte + "' ");
        
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