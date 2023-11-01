<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.clase.Libro"%>
<%@page import="java.util.List"%>

<%
    List<Libro> lista = (List<Libro>) request.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center></center><h1>Libros</h1></center>
<a href="LibroController?op=nuevo">Nuevo</a>
<center></center><table border="1" cellspacing="0" class="table table-bordered">
    <tr>
        <th>Id</th>
        <th>Titulo</th>
        <th>Autor</th>
        <th>Disponible</th>
        <th>Categoria</th>
        <th colspan="2">Acciones</th>
    </tr>
    <c:forEach var="item" items="${lista}">
        <tr>
            <td>${item.id}</td>
            <td>${item.titulo}</td>
            <td>${item.autor}</td>
            <td>${item.disponible}</td>
            <td>${item.categoria}</td>
            <td><a href="LibroController?op=eliminar&id=${item.id}"
                   onclick="return(confirm('Eliminar??'))">Eliminar</a></td>
            <td><a href="LibroController?op=editar&id=${item.id}"
                   >Editar</a></td>
        </tr>
    </c:forEach>
</table></center>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
