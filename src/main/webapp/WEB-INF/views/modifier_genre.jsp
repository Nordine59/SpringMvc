<%-- 
    Document   : modifier_jsp
    Created on : 10 oct. 2016, 14:39:06
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
        <h1>Edition du genre</h1>
        <div>
            <!--form biding pour tout recup-->
            <c:set var="route">
                <spring:url value="/modifier_genre"/>
            </c:set>
            <form:form action="${route}" modelAttribute="genreAct">
                <label>Nom du Genre :</label>
                <form:input path="nom"/>
                <br>
                <form:hidden path="id"/>
                <br>
                <input type="submit" value="Modifier"/>
                
                
                
                
            </form:form>
            
        </div>
        
    </body>
</html>
