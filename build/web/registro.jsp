<%-- 
    Document   : registro
    Created on : 28/09/2020, 15:04:55
    Author     : mared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name ="viewport" content ="width=device-width, initial scale=1, shrink-to-fit=no">
        <title>inicio</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
        <link rel="stylesheet" href="styles.css">
        <title>Registro</title>
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
    <a class="dropdown-item" href="deleteUsuarios.jsp">Usuarios</a>
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
   
          
          
          
        <form action="srvRegistroUsuario" method="POST">
            <form action="srvRegistroUsuario" method="POST">
                
             <div class="container">
              <div class="row row-cols-2">
               <div class="col">   
        <div class="form-group">
            <div class="4-options>"
                   <label>Nombre:</label>
                       <input type="text" class="form-control" name="nombreUs" placeholder="ingrese su usuario">
                          
                </div>
                  <div class="form-group">
                   <label>Apellido:</label>
                       <input type="text" class="form-control" name="apellidoUs"  placeholder="primer apellido">
             
                </div>
                               <div class="form-group">
                           <label >Nombre de usuario:</label>
                       <input type="text" class="form-control" name="nickName"  placeholder="ingrese su usuario">
                          
                </div>
                  <div class="form-group">
                   <label>Correo</label>
                   <input type="text" class="form-control" name="correoUs" aria-describedby="emailHelp" placeholder="ingrese su correo">
                  </div>          
                </div>
                   
                   </div>
                   
               <div class="col">
               
            <div class="form-group">
                  <label>Telefono:</label>
                       <input type="text" class="form-control" name="telefonoUs" placeholder="ingrese su telefono">
            </div>
                <div class="form-group">
                  <label>direccion:</label>
                       <input type="text" class="form-control" name="direccionUs" placeholder="ingrese su direccion">
            </div>
                <div class="form-group">
                  <label>Genero</label>
                       <input type="text" class="form-control" name="generoUs" placeholder="ingrese su genero">
            </div>
                <div class="form-group">
                  <label>Contraseña:</label>
                       <input type="password" class="form-control" name="passUs" placeholder="ingrese su contraseña">
            </div>
                   
                   </div>
              </div>
             </div>
        
            <button type="submit" class="btn btn-primary" onclick=alert("Registrado")>Submit</button>
        </form>
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
