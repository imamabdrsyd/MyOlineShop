<%-- 
    Document   : login
    Created on : Oct 18, 2017, 2:48:11 PM
    Author     : imam
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container" style="padding: 50px;">
        <div class="card" style="width: 20rem;">
            <div class="card-body">
                <h2 class="card-title">Please login!</h2>
                <p class="card-text">
                 <b>${errMsg}</b>
                 <form:form action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean" method="POST" >
                     <form:label path="username">Username</form:label>
                     <form:input path="username" cssClass="form-control"/> <br/>
                     <form:label path="password">Password</form:label>
                     <form:password path="password" cssClass="form-control"/><br/>
                <form:button name="submitButton" value="Submit" class="btn btn-primary" cssClass="form-control">Submit</form:button>           
                 </form:form>
                </p>
            </div>
        </div>
        </div>
        
    </body>
</html>
