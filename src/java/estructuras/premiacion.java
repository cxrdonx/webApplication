/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package estructuras;

public class premiacion {
    
    String nombre;
    String descripcion;
    String lugar;
    int idPremiacion;
    
 
    public premiacion(int idPremiacion, String nombre, String descripcion, String lugar){
       this.idPremiacion = idPremiacion;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.lugar = lugar;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public int getIdPremiacion() {
        return idPremiacion;
    }

    public void setIdPremiacion(int idPremiacion) {
        this.idPremiacion = idPremiacion;
    }

   
   
    
    
}
