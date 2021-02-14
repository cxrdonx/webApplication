<%-- 
    Document   : post_shop
    Created on : 31/10/2020, 16:08:33
    Author     : mared
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import=" modelo.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
          <meta http-equiv="X-UA-compatible" content="ie=edge">
        <link rel="stylesheet" href="styles.css">
        <title>JSP Page</title>
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
              
       
    </ul>
  </div>
</nav>
          <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Deporte</th>
      <th scope="col">Fecha</th>
      <th scope="col">categoria</th>
      <th scope="col">Lugar</th>
      <th scope="col">precio</th>
      <th scope="col">cantidad</th>
    </tr>
  </thead>
  <tbody>
  <form method="shop_ciclismo.jsp">
    <tr>
       
      <th scope="row">1</th>
      <td>Atletismo</td>
      <td>5/06/2022</td>
      <td>500mts</td>
      <td>Ciudad de Guatemala</td>
      <td>Q100.00 </td>
      <td><input type="text" name="cantidad" ><a href="shop_maraton.jsp">comprar</a></td>
        </form>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Atletismo</td>
      <td>12/04/2021</td>
      <td>carrera familiar 20k</td>
      <td>Peten</td>
      <td>Q100.00 c/u </td>
      <td><input type="text" name="cantidad"><a href="shop_ciclismo.jsp">comprar</a></td>
    </tr>
   
  </form>
  </tbody>
</table>

          
        
        
    </body>
</html>
