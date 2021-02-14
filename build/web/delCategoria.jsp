<%-- 
    Document   : delCategoria
    Created on : 30/10/2020, 05:24:33
    Author     : mared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <html>
    <head>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
        <link rel="stylesheet" href="styles.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
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
        
        
        
        
        
        
        
        
        
        
        
          <form action="srvDelPrem" method="POST">
                <div class="shadow-lg p-3 mb-5 bg-white rounded">
                   <label>Eliminar por id:</label>
                       <input type="text" class="form-control" name="idPrem" placeholder="id premiacion para eliminar">
           <button type="submit" class="btn btn-outline-dark"">Eliminar</button>
                </div>
            </form>
           
               <%
                   HttpSession sesion = request.getSession();
                   if(request.getAttribute("respuesta")!=null)
                   {
                       Boolean eliminado;
                       String perfil ="";
                       eliminado = (Boolean) request.getAttribute("respuesta");
                        perfil = (String) request.getAttribute("perfil");
                   
                   if(eliminado)
                   {
                       response.sendRedirect("registroGuardado.jsp");
                   }else{
                      %>
                            
                              
                    <script> alert("no se pudo eliminar");</script>
                    
                      
                    <%
                   }
                        
             }



%>
    </body>
</html>
