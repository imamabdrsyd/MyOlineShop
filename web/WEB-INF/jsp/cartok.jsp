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
        <div>Total belanjaan anda: <label>${cartok}</label></div> 
        
                <h3><a href="#">Cart: ${cart.carts.size()}</a></h3>
                <c:forEach var="c" items="${cart.carts}">
                    
                    <label>Product Name: ${c.value.productNama}</label>
                    <label>${c.value.harga}</label>
                <label><a href="${pageContext.request.contextPath}/cart/${c.value.id}/${c.key}">Remove</a></label>
     
                </c:forEach>
    </body>
</html>
