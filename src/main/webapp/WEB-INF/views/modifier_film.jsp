<%-- 
    Document   : modifier_film
    Created on : 11 oct. 2016, 10:20:28
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Modifier Film :</h1>

        <div>
            <!--form biding pour tout recup-->
            <c:set var="modificationFilm">
                <spring:url value="/modifier_film"/>
            </c:set>
            <form:form action="${route}" modelAttribute="nouveauFilm">
                <label>Nom du Film :</label>
                <form:input path="titre"/>
                <br>
                <form:input path="synopsis"/>
                <br>
                <form:input path="anneeProd"/>
                <form:hidden path="id"/>
                <br>
                <input type="submit" value="Modifier"/>

            </form:form>
    </body>
</html>
