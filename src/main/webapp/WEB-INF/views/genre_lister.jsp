<%-- 
    Document   : genre_lister
    Created on : 10 oct. 2016, 11:01:52
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pirate-Stream : Liste des genres</h1>


        <a href="<spring:url value="/ajouter_genre"/>"><b>AJouter Genre</b></a>
        <c:forEach items="${mesGenres}" var="monGenre"> 

            <div> 
                <b>${monGenre.nom}</b> <a href="supprimer_genre/${monGenre.id}">Supprimer</a>
                <a href="modifier_genre/${monGenre.id}">Editer</a>


                <!--renvoie vers le controleur( genre) et supprime l id -->




            </div>
        </c:forEach>

    </body>

</html>
