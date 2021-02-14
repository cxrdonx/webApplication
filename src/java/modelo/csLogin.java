 package modelo;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

 

public class csLogin {
    Connection conn = null;
    Statement stm = null;
    ResultSet rs; 
    String nombreUsuario, nombre, apellido, direccion,correo,password,genero,rol;
    int telefono;

       public csLogin(){
           this.conn = null;
           this.stm = null;

       }
       
       public String consulta(String usuario, String pswd){
           String perfil = "";
           conexion con = new conexion();
           conn = con.abrir();
           
         try{
             stm = conn.createStatement();
             rs = stm.executeQuery("select * from usuario where nombreUsuario= '"+usuario+"' and password= '"+pswd+"'");
          
         while(rs.next()){
             perfil = rs.getString("perfil");
         }
            con.cerrar();
            conn.close();
        }
           catch (Exception e){
         perfil = e.toString();
          }
    return perfil;       
}
      public String eliminar(String usuario){
                   
          return usuario;
          
      }
      

}