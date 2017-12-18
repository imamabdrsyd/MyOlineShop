<%-- 
    Document   : welcome
    Created on : Dec 13, 2017, 9:53:34 AM
    Author     : user
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" style="padding: 50px;" align="center">
        <div class="card" style="width: 20rem;">
            <div class="card-body">
                <h2 class="card-title">Welcome</h2>
                <p class="card-text">To The Biggest Shopping Network</p>
                <a href="register" class="btn btn-primary">Register</a>
                <a href="product/all" class="btn btn-primary">Product</a>
                <b></b>
                <a href="${pageContext.request.contextPath}/login" class="btn btn-danger">Login</a>
            </div>
        </div>
        </div>
    </body>
</html>
