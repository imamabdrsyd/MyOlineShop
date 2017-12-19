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
        <jsp:include page="navbar.jsp"/>
        <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/css/login.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="container" style="padding: 5px;">
        <div class="card" style="width: 20rem;" align="center">
            <div class="card-body">
                <p class="card-text">
                 <b>${errMsg}</b>
                 <form:form action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean" method="POST" >
                 <div class="container">
                 <div class="login-container">    
                 <div id="output"></div>
                     <div class="avatar"></div>
                     <form:input path="username" placeholder="username" cssClass="form-control"/> <br/>
                     <form:password path="password" placeholder="password" cssClass="form-control"/><br/>
                <form:button name="submitButton" value="Submit" class="btn btn-info btn-block login" cssClass="form-control">Submit</form:button>           
                 </form:form>
                </div>
                     </div>
                </p>
            </div>
        </div>
        </div> 
    </body>
</html>
