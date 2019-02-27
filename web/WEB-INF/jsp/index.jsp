<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text white">
                    <a href="inserir.htm"> Novo Contato </a>
                </div>
                <div class="card-body">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>ID:</th>
                                <th>NOME:</th>
                                <th>TELEFONE:</th>
                                <th>EMAIL</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="contato" items="${lista}">
                            <tr>
                                <td>${dados.id}</td>
                                <td>${dados.nome}</td>
                                <td>${dados.telefone}</td>
                                <td>${dados.email}</td>
                                <td 
                                    <a> Editar</a>
                                    <a> Deletar </a>
                            </tr>
                            </c:forEach>
                        </tbody>
                        
                    </table>
                </div>
            </div>
        </div>
            
        </div>
    </body>
</html>
