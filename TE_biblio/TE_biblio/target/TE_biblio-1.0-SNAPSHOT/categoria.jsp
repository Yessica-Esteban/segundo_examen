<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.clase.Categoria"%>
<%
    List<Categoria> lista = (List<Categoria>) request.getAttribute("lista");
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
    <center><h1>Categoria</h1></center>
    <a href="CategoriaController?op=nuevo">Nuevo</a>
    <center><table border="1" cellspacin="0" class="table table-bordered">
            <tr>
                <th>Id</th>
                <th>Categoria</th>
                <th colspan="2">Acciones</th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.categoria}</td>
                    <td><a href="CategoriaController?op=eliminar&id=${item.id}"
                           onclick="return(confirm('Eliminar???'))">Eliminar</a></td><!-- comment -->
                    <td><a href="CategoriaController?op=editar&id=${item.id}">Editar</a></td>
                </tr>
            </c:forEach>
        </table></center>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>
