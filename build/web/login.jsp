<%-- 
    Document   : login
    Created on : 9/10/2020, 02:27:55
    Author     : mared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session = "true" %>
<!DOCTYPE html>
<html>
    <head>
          <meta name ="viewport" content ="width=device-width, initial scale=1, shrink-to-fit=no">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles.css">
        <title>JSP Page</title>
    
        <script type="text/javascript">
          function validate(){
            var password=document.myForm.txtpswd.value;
            var user=document.myForm.usuario.value;
              if(user=="")
              {
                  alert("usuario vacio");
                  document.myForm.txtUsuario.focus();
                  return false;
              }
              else if(password==""){
                  alert("contrasenia vacia");
                  document.myForm.txtPassword.focus();
                  return false;
              }
          }
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
              
       
    </ul>
  </div>
</nav>
          <div class="form-group">
            <form name="myForm" action="srvLogin" method="POST" >
                <div class="shadow-lg p-3 mb-5 bg-white rounded">
                   <label for="exampleInputEmail1">Nombre de usuario:</label>
                       <input type="text" class="form-control" name="usuario" placeholder="ingrese su usuario">
                          <small id="emailHelp" class="form-text text-muted">No comparta su contraseña.</small>
              
                  <label for="exampleInputPassword1">Contraseña:</label>
                       <input type="password" class="form-control" name="txtpswd" placeholder="ingrese su contraseña">
            </div>
            <div class="form-group form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Recordarme</label>
            </div>
            <button type="submit" class="btn btn-outline-dark" onClick="return validate();">Iniciar sesión</button>
         </form>
          </div>
           
         
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
     <%
          HttpSession sesion = request.getSession();
            if (request.getAttribute("respuesta")!= null)
            {
                Boolean encontrado;
                String perfil ="";
                encontrado = (Boolean) request.getAttribute("respuesta");
                 perfil = (String) request.getAttribute("perfil");
               
                
                if(encontrado)
                {
                  sesion.setAttribute("usuario", request.getAttribute("usuario"));
                  sesion.setAttribute("perfil", request.getAttribute("perfil"));
                  response.sendRedirect("index.jsp");
                }
                else{
     
                   
        %>
         <script> alert("usuario no encontrado ","sin acceso al sistema", "error");</script>
     
        <%
                }
}
             if(request.getParameter("cerrar")!=null){
            session.invalidate(); 
}
        %>
        
       
       
       </body>
</html>
