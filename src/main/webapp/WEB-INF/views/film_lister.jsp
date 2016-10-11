<%-- 
    Document   : film_lister
    Created on : 11 oct. 2016, 10:19:51
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste des films :</h1>
        
        <a href="<spring:url value="/ajouter_film"/>"><b>AJouter Film</b></a>
                 <c:forEach items="${mesFilms}" var="monFilm"> 

                <div> 
                <b>${monFilm.titre}</b> <a href="supprimer_film/${monFilm.id}">Supprimer</a>
                <a href="modifier_film/${monFilm.id}">Editer</a>


                <!--renvoie vers le controleur( genre) et supprime l id -->




            </div>
        </c:forEach>
        
        
        
        
    </body>
</html>
