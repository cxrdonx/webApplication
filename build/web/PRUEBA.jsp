<%-- 
    Document   : PRUEBA
    Created on : 30/10/2020, 00:56:14
    Author     : mared
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <form action="srvBuscarPremiacion" method="POST">
        <table>
            <tr>
                Nombre
                <td><input type="text" name="txtNombre"></td>
            </tr>  
            <tr>
                Descripcion
                <td><input type="text" name="txtDescripcion></td>"
           </tr>
            <tr>
                Lugar
                <td><input type="text" name="txtLugar"></td>
            </tr>
            <tr>
                id a insertar
                <td><input type="text" name="txtidPremiacion"></td>
            </tr>
            <input type="submit" name="franchessco" value="enviar">
          </form>          
            </tr>
        </table>
    </body>
</html>
