/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;
import java.sql.*;
import controlador.*;
public class csUsuario {
        private  String nombre, apellido,usuario, correo, direccion, genero, pswd, rol;
        private int tel;
       
         public csUsuario(String usuario,String nombre, String apellido, String direccion, String correo,String pswd, int tel, String genero, String rol){           
              this.usuario = usuario;
              this.nombre = nombre;
              this.apellido = apellido;
              this.direccion = direccion;
              this.correo = correo;
              this.pswd = pswd;
              this.tel = tel;
              this.genero = genero;
              this.rol=rol;
              
         }

    public csUsuario() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getPswd() {
        return pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }
    
}
/*
public String insertarUsuario(String usuario, String password){
    String perfil ="";
    conexion con  = new conexion();
    cn = con.conectar();
    
    try{
     stm = cn.createStatement();
     rs=   stm.executeQuery("insert into usuario(nombreUsuario, nombre, apellido, direccion, correo, contrasenia, telefono, genero, rol)"
                    + "values ('"+getUsuario()+"','"+getNombre()+"','"+getApellido()+"','"+getDireccion()+"','"+getCorreo()+"','"+getPswd()+"','"+getTel()+"','"+getGenero()+"','"+getRol()+"')");
while(rs.next()){
    perfil = rs.getString("perfil");
       
}
con.desconectar();
cn.close();
}
  catch(Exception e){
    perfil = e.toString();
}  
 return perfil; 
}
   
*/
