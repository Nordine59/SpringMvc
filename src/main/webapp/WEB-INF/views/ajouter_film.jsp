<%-- 
    Document   : ajouter_film
    Created on : 11 oct. 2016, 11:03:11
    Author     : admin
--%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nouveau Film</h1>
        <c:set var="caca">
            <spring:url value="/film_lister"/>  
        </c:set>
        <form:form modelAttribute="nouveauFilm">
            <label>TITRE</label>
           <form:input path="titre"/> 
           <br>
            <label>Annee de prod.</label>
            <form:input path="anneeProd"/> 
              <br>
             <label>Synopsis</label>
            <form:textarea path="synopsis"/> 
              <br>
            <label>Genre</label>
            <form:select path="genre.id" items="${genres}" itemLabel="nom" itemValue="id"/>     
            
            <input type="submit" value="Ajouter"/>
            
            
           
            
            
            
            
            
        </form:form>
        
        
        
        
    </body>
</html>
