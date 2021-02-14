<%-- 
    Document   : actualizarCategoria
    Created on : 30/10/2020, 05:23:58
    Author     : mared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name ="viewport" content ="width=device-width, initial scale=1, shrink-to-fit=no">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
         <link rel="stylesheet" href="styles.css">
           
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script>
            $(document).ready( function(){
                $("#submit").click(
                function(){
                    var usuario =$("#txtcategoria").val();
                    $.get('srvBuscarCategoria',{nusuario:usuario}, function(datos)
                    {
                      if(datos.length>0)
                      {
                        var pegados =datos.split("|");
                        var nombre = pegados[0];
                        var descripcion = pegados[1];
                       
                             
                            $("#txtNombre").val(nombre);
                            $("#txtDescripcion").val(descripcion);
                         
                      }
                      else
                      {
                           $("#txtNombre").val("");
                            $("#txtDescripcion").val("");
                           
                            
                      }
                    }
                   );
                }        
                );
                    
                    
                $("#btnActualizar").click(
                function(){
                    var usuario =$("#txtusuario").val();
                    var nombre =$("#txtNombre").val();
                    var direccion =$("#txtDireccion").val();
                    var telefono =$("#txtTelefono").val();
                    var puesto =$("#txtPuesto").val();
                    var sueldo =$("#txtSueldo").val();
                    
                    $.get('updateEmpleado',{nusuario:usuario,nnombre:nombre,ndireccion:direccion,ntelefono:telefono,npuesto:puesto,nsueldo:sueldo}, function(datos)
                    {
                      if(datos.length>0)
                      {
                          swal("Exito", "Registro Actualizado", "success");
                         $("#txtNombre").val("");
                         $("#txtDireccion").val("");
                         $("#txtTelefono").val("");
                         $("#txtPuesto").val("");
                         $("#txtSueldo").val("");
                      }
                      else
                      {
                          swal ( "Error" ,  "Error al Modificar!" ,  "error" );
                      }
                       
                    }
                   );
                }        
                );
        
        
        
        
             }
            );
                    
            
        </script>
        
    </head>
    <body>
       
         <div class="container">
    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand text-white">
            <img src="multimedia/gamatix.png" width="45" heigh="45" alt=""/>
        </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
      
  <div class="collapse navbar-collapse" id="navbarText">
      <%
    
          %>
          
  
    <ul class="navbar-nav ml-auto">
      <li class="nav-item ">
        <a class="nav-link" href="registro.jsp">Registrarse </a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">iniciar sesion</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">eventos</a>
        
      </li>
              <div class="dropdown">
  <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  Panel de control
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="NewPremiacion.jsp">Premiacion</a>
    <a class="dropdown-item" href="NewCategoria.jsp">Categorias</a>
    <a class="dropdown-item" href="NewSubCategoria.jsp">Sub categorias</a>
       <a class="dropdown-item" href="NewDeporte.jsp">Deportes</a>
       <a class="dropdown-item" href="NewEvento.jsp">Eventos</a>
       <a class="dropdown-item" href="NewInscripcion.jsp">Inscripciones</a>
       <a class="dropdown-item" href="NewDeportista.jsp">Deportista</a>
       <a class="dropdown-item" href="NewHistoricoParticipacion.jsp">Historico participacion</a>
       <a class="dropdown-item" href="NewPublicidad.jsp">Publicidad</a>
       <a class="dropdown-item" href="NewMetodoPago.jsp">Metodo de pago</a>
  </div>
       
    </ul>
  </div>
</nav>
           <div class="container well" id="containerLogin">
           <input type="text" name="txtcategoria" value="" id="txtcategoria" placeholder="Id categoria a buscar" />
        <input type="submit" value="Procesar" id="submit"/><br><br>
          
          <input type="text" class="form-control" name="txtNombre" value="" id="txtNombre" placeholder ="Nombre"/><br>
        <input type="text" class="form-control" name="txtDescripcion" value="" id="txtDescripcion" placeholder="Descripcion" /><br>
      
  
        <center>
        <input type="submit" class="btn btn-primary" value="Actualizar" name="btnActualizar" id="btnActualizar"/>
        </center>
        </div>
        
        
 
        
    </body>
</html>
