<%-- 
    Document   : actualizarPremiacion.jsp
    Created on : 28/10/2020, 10:53:34
    Author     : mared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name ="viewport" content ="width=device-width, initial scale=1, shrink-to-fit=no">
        <title>inicio</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
            <link rel="stylesheet" href="styles.css">   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
           
          
        <script>
            $(document).ready( function(){
                $("#submit").click(
                function(){
                    var usuario =$("#txtusuario").val();
                    $.get('srvBuscarPremiacionjs',{nusuario:usuario}, function(datos)
                    {
                      if(datos.length>0)
                      {
                        var pegados =datos.split("|");
                        var nombre = pegados[0];    
                        var descripcion = pegados[1];
                        var lugar = pegados[2];
                       
                             
                            $("#txtNombre").val(nombre);
                            $("#txtDireccion").val(descripcion);
                            $("#txtTelefono").val(lugar);
                       
                      }
                      else
                      {
                           $("#txtNombre").val("");
                            $("#txtDireccion").val("");
                            $("#txtTelefono").val("");
                       
                            
                      }
                    }
                   );
                }        
                );
                    
                    
                $("#btnActualizar").click(
                function(){
                    var idPremiacion = $("#txtusuario").val();
                    var nombre =$("#txtNombre").val();
                    var descripcion =$("#txtDireccion").val();
                    var lugar =$("#txtTelefono").val();
                   
                    
                    $.get('srvUpdatePremiacion',{nnidPremiacion:idPremiacion,nnombre:nombre,ndescripcion:descripcion,nlugar:lugar}, function(datos)
                    {
                      if(datos.length>0)
                      {
                          alert("Actualizado correctamente");
                         $("#txtNombre").val("");
                         $("#txtDireccion").val("");
                         $("#txtTelefono").val("");
                      
                      }
                      else
                      {
                          alert ( "Error al Modificar!" );
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
         <div class="containeres">
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
        <a class="nav-link" href="login.jsp">Iniciar sesion</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">Cerrrar sesion</a>
        
      </li>
              <div class="dropdown">
  <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  Panel de control
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="NewUsuarios.jsp">Usuarios</a>
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
           <input type="text" name="txtusuario" value="" id="txtusuario" placeholder="Id premiacion a buscar" />
        <input type="submit" value="Procesar" id="submit"/><br><br>
              
       
         <input type="text" class="form-control" name="txtNombre" value="" id="txtNombre" /><br>
        <input type="text" class="form-control" name="txtDireccion" value="" id="txtDireccion" /><br>
        <input type="text" class="form-control" name="txtTelefono" value="" id="txtTelefono" /><br>
  
        <center>
        <input type="submit" class="btn btn-primary" value="Actualizar" name="btnActualizar" id="btnActualizar"/>
        </center>
        </div>
                        
                   
                   
              <%
                if(request.getAttribute("respuesta")!=null){
                    if((Integer)request.getAttribute("respuesta")==1){
                        
                        %>
                        <script> alert("registro almacenado");</script>
                        <%
                    }
                else{
                  %>
                  <script> alert("error en el registro");</script>
                  <%
                     }


                         }
%>
                
                
                
                
         <script src="js/popper.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        
     
    </body>
</html>
