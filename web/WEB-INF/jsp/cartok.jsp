<%-- 
    Document   : cartok
    Created on : Dec 15, 2017, 2:02:59 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
    </head>
    <body>
        <h1>Hello Cart</h1>
        <div>Total belanjaan anda: <label>${carts}</label></div> 
        
                <h3><a href="#">Cart: ${cart.carts.size()}</a></h3>
                <c:forEach var="e" items="${cart.carts}">
                    
                    <label>Product Name: ${e.value.productNama}</label>
                    <label>${e.value.harga}</label>
                <label><a href="${pageContext.request.contextPath}/order/${e.value.id}/${e.key}">Remove</a></label>
     
                </c:forEach>
    </body>
</html>
