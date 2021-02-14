<%-- 
    Document   : deleteUsuarios
    Created on : 16/10/2020, 17:12:59
    Author     : mared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrar Usuarios</title>
        <meta name ="viewport" content ="width=device-width, initial scale=1, shrink-to-fit=no">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-compatible" content="ie=edge"> 
        <link rel="stylesheet" href="styles.css">
        </head>  
           <body>
            <form action="srvDel" method="POST">
                <div class="shadow-lg p-3 mb-5 bg-white rounded">
                   <label>Eliminar por id:</label>
                       <input type="text" class="form-control" name="idUsuario" placeholder="ingrese el id para eliminar">
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
