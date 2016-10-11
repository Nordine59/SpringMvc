<%-- 
    Document   : ajout_modifier
    Created on : 10 oct. 2016, 16:24:18
    Author     : admin
--%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <h1>Ajouter un genre</h1>
        <br>
        <div>
            <!--form biding pour tout recup-->
            <c:set var="route1">
            <spring:url value="/genre_lister"/>
            </c:set>
            
             <form:form  modelAttribute="nouvGenre">
                <label>Nom du Genre :</label>
                <form:input path="nom"/>
                <br>
             
               
                <input type="submit" value="Ajouter"/>
             </form:form>
        
    </body>
</html>
