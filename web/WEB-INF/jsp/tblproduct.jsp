<%-- 
    Document   : customer
    Created on : Dec 13, 2017, 2:50:05 PM
    Author     : user
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="navbar.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
    </head>
    <body><jsp:include page="header.jsp"/>  
        <h1>Product</h1><br/>
        <c:forEach var="c" items="${tblproduct}">
            
            <p>
                <a href="${c.id}"> ${c.productNama}</a> 
                <a href="${pageContext.request.contextPath}/order/add/${c.id}">Add to cart</a>
            </p>
        </c:forEach>
            <div>
                <img src="https://brain-images-ssl.cdn.dixons.com/4/0/10152504/u_10152504.jpg" alt="yoms">
            </div>
    </body>
</html>
