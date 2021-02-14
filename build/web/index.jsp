
<%-- 
    Document   : index
    Created on : 28/09/2020, 17:01:13
    Author     : mared
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>


 

<!DOCTYPE html>
<html lang ="es">
<html>
    <head>
        <meta name ="viewport" content ="width=device-width, initial scale=1, shrink-to-fit=no">
        <title>inicio</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
    <link rel="stylesheet" href="index.css">   
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
        <a class="nav-link" href="#">. </a>
      </li> 
       
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">Cerrrar sesion</a>
        
      </li>
      
      <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  Reportes     
          </button>
          <div class="dropdown-menu" aria-labelledby="dopdownMenuButton">
               <a class="dropdown-item" href="#">Premiacion</a>
               <a class="dropdown-item" href="#">Categorias</a>
              <a class="dropdown-item" href="#">Sub categorias</a>
              <a class="dropdown-item" href="#">Deportes</a>
               <a class="dropdown-item" href="#">Eventos</a>
              <a class="dropdown-item" href="#">Inscripciones</a>
              <a class="dropdown-item" href="#">Deportista</a>
            
          </div>
      </div>
      
     
    
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
      
  </div>
      
    </ul>
  </div>
</nav>
        
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
     
    <div class="carousel-item active">
      <img src="multimedia/background.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="multimedia/natacion.jpeg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
           <div class="container">
              <div class="row">
               <div class="col"> 
                   
         <div class="card" style="width: 22rem;">
  <img src="multimedia/ciclismo.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Ciclismo</h5>
    <p class="card-text">Carrera de ciclismo en ciudad de Guatemala, diferentes categorias.</p>
    <a href="post_shop.jsp" class="btn btn-primary">Comprar</a>
  </div>
</div>
               </div>   
                  
         <div class="col">
          <div class="card" style="width: 22em;">
  <img src="multimedia/maraton.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Atletismo</h5>
    <p class="card-text">Grupales e individuales.</p>
    <a href="pre_maraton.jsp" class="btn btn-primary">Comprar</a>
  </div>
</div>
         </div>      
                  
               <div class="col">
          <div class="card" style="width: 22rem;">
  <img src="multimedia/tenis.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Tenis</h5>
    <p class="card-text">Campeonatos de tenis individual y parejas.</p>
    <a href="shop_tenis.jsp" class="btn btn-primary">Comprar</a>
  </div>
</div>
         </div>
                  s
                  <div class="col">
          <div class="card" style="width: 22rem;">
  <img src="multimedia/baloncesto.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Baloncesto</h5>
    <p class="card-text">Inscripcion de Baloncesto por equipos.</p>
    <a href="shop_baloncesto.jsp" class="btn btn-primary">Comprar</a>
  </div>
</div>
         </div>
              </div>
           </div>  
            
            
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
   </body>
</html>


