package modelo;

 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mared
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;




public class conexion2{
    Connection cnn;  //conectar la bd
    Statement state;   //ejecutar una query
    ResultSet res;    //guardar el resultado de un select
    
    
   public conexion2(){
       
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            cnn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sistema","system","admin");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(conexion2.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(conexion2.class.getName()).log(Level.SEVERE, null, ex);
        }            
    }
         public int insertar(csUsuario us){
             
             int bandera = 0;
             try {
            String query = "insert into usuario(nombreUsuario, nombre, apellido, direccion, correo, password, telefono, genero, rol)"
                    + "values ('"+us.getUsuario()+"','"+us.getNombre()+"','"+us.getApellido()+"','"+us.getDireccion()+"','"+us.getCorreo()+"','"+us.getPswd()+"','"+us.getTel()+"','"+us.getGenero()+"','"+us.getRol()+"')";
            state = cnn.createStatement();
                   
             bandera = state.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(conexion2.class.getName()).log(Level.SEVERE, null, ex);
        }
           return bandera;
         }


        
        
}
    

/*
public class conexion {
    public static Connection con=null;
private static String bd = "SISTEMA";
public static String usuario = "system";
public static String passw = "admin";
public static String url = "jdbc:oracle:thin:@localhost:1521:sistema"+bd;
public static Connection abrir(){
    try{
        Class.forName("oracle.jdbc.OracleDriver");
    con = DriverManager.getConnection(url,usuario,passw);
    System.out.println("Conexión exitosa:"+con);
            } catch (Exception e) {
    System.out.println("Error en la conexion...");
    e.printStackTrace();
    return null;
}        
    return con;
}
public static void cerrar(){
    try{
        if(con != null)
            con.close();
} catch (Exception e){
    System.out.println("Error: No se logro cerrarla conexion:\n"+e);
} 
*/
//public class conexion {
 //  Connection con;
 // public Connection conexion(){  
 //         try{
 //              Class.forName("oracle.jdbc.OracleDriver"); 
  //            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sistema","system","admin");
 //         }catch (Exception e){         
  //        }
   //       return con;
        
    



