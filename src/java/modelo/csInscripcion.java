
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import modelo.conexion;

public class csInscripcion {
    
    private Connection conn;
    private Statement stm;
    private ResultSet rs;
    
 public csInscripcion(){
     this.conn = null;
     this.stm = null;
 }




      public String buscarInscripcion(int idInscripcion){

 String resultado="";         
        conexion cn = new conexion();
        rs=null;
        try{
        conn=cn.abrir();
        stm=conn.createStatement();
        rs=stm.executeQuery("select * from inscripcion where idInscripcion='" + idInscripcion + "' ");
        
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