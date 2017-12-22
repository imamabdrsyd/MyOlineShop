<%-- 
    Document   : welcome
    Created on : Dec 13, 2017, 9:53:34 AM
    Author     : imam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="navbar.jsp"/>
        <jsp:include page="head.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">          
        <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
        <script src="<c:url value='/resources/js/bootstraps.js'/>"  ></script>
        <title>HOME</title>
        
    </head>
    <body>
        <div class="card text-center" style="padding: 10px;" align="center">
        <div class="card-header">
        </div>
            <div class="card-body">
                <h2 class="card-title">Welcome</h2>
                <p class="card-text">To The Biggest Shopping Network</p>
                <a href="register" class="btn btn-primary">Register</a>
                <a href="${pageContext.request.contextPath}/login" class="btn btn-danger">Login</a>
            </div>
        </div>
    </body>
    
</html>
