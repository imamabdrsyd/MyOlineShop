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
        <jsp:include page="navbar.jsp"/> 
        <a href="${pageContext.request.contextPath}/order/show"
           align="center">Cart: ${cart.carts.size()}</a>
        <h1 class="container">Hello Cart</h1>
        <div class="container">
            Total belanjaan anda: <label>${carts}</label>
        </div> 
        <b></b>
        
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                        <th>Nama Produk</th>
                        <th>Harga</th>
                        <th>Hapus</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <c:forEach var="e" items="${cart.carts}">
                        <td>${e.key}</td>
                        <td>${e.value.productNama}</td>
                        <td>${e.value.harga}</td>
                        <td><a href="${pageContext.request.contextPath}/order/${e.value.id}/${e.key}">Remove</a></td>
                </tr>
                    </c:forEach>
                </tbody>
        </table>
    </body>
</html>
