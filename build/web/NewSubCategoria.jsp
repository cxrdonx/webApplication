<%-- 
    Document   : NewSubCategoria
    Created on : 28/10/2020, 19:46:46
    Author     : mared
--%>

<%@page import="java.util.ArrayList"%>
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
     
  </div>
       
    </ul>
  </div>
</nav>
        
        
        <div class="form-group">
            <div class="4-options">
                <form action="srvNewSubCategoria" method="POST">
                    <label>Ingresar una nueva Sub categoria</label>
                    <p><label>Id categoria:</label></P>
               
               
                       </select>
                       </form>
                       <select name="mostrarIdCat">
                                
                       </select>
                       
                </div>
                  <div class="form-group">
                   <label>Nombre:</label>
                       <input type="text" class="form-control" placeholder="ingrese el nombre" name="txtNombre">
             
                </div>
                          <div class="form-group">
                          <label >Descripcion:</label>
                       <input type="text" class="form-control" placeholder="ingrese la descripcion" name="txtDescripcion">
                          
                </div>
                     <div style="text-align: center">
            <button type="submit" class="btn btn-primary" name="btnAceptar">Enviar</button>
            <a href="actualizarSubCategoria.jsp" class="btn btn-outline-dark">Actualizar</a>
            <a href="delSubCategoria.jsp" class="btn btn-outline-dark" name="btnUpdate">Eliminar</a>
                </div>
      
            </div> 
                </form>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
