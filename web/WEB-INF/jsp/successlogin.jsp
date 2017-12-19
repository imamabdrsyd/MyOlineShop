<%-- 
    Document   : successlogin
    Created on : Dec 13, 2017, 9:52:33 PM
    Author     : imam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
a:link, a:visited {
    background-color: #f44336;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: red;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Berhasil!</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        
        <div class="container">
            <h1 class="jumbotron"
                align="center">${user.username}, Anda berhasil Login</h1>
             <c:if test="${not empty sessionScope.user}">
            <div align="center"><a href="${pageContext.request.contextPath}/logout" class="btn btn-danger">Logout</a>
            </div>
        </c:if>
        </div>
    </body>
</html>

