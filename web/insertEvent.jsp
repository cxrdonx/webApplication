<%-- 
    Document   : index
    Created on : 28/09/2020, 13:25:38
    Author     : mared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name ="viewport" content ="width=device-width, initial scale=1, shrink-to-fit=no">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-compatible" content="ie=edge">
        <title>ingresar un nuevo evento</title>
    </head>
    <body>
        <form method ="insertEvento" action="post">
       <div class="form-group">
                   <label>Lugar: </label>
                       <input type="text" class="form-control" name="lugarPreEv" placeholder="Lugar del evento">
                </div>
             <div class="form-group">
                   <label>Precio: </label>
                       <input type="text" class="form-control" name="montoEv" placeholder="precio del evento">
                </div>
             <div class="form-group">
                   <label>fecha: </label>
                       <input type="text" class="form-control" name="fechaEv" placeholder="fecha del evento">
                </div>
             <div class="form-group">
                   <label>Cantidad: </label>
                       <input type="text" class="form-control" name="cantidadEv" placeholder="cantidad de tickets">
                </div>
             <div class="form-group">
                   <label>Participantes: </label>
                       <input type="text" class="form-control" name="lugarPre" placeholder="Lugar del evento">
                </div>
      
            <button type="submit" class="btn btn-primary" onClick="return validate();">Submit</button>

        </form>
                 
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        
    </body>
</html>
