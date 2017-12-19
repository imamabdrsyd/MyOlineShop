<%-- 
    Document   : customer
    Created on : Dec 13, 2017, 2:50:05 PM
    Author     : imam
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
    <body>
        
        <jsp:include page="header.jsp"/> 
        <table class="table table-bordered">
                <tr>
                    <th><h1>#</h1></th>
                    <th><h1>Product</h1></th>
                    
                    <th>
                        <h1>
                            <a href="${pageContext.request.contextPath}/order/show">Cart: ${cart.carts.size()}</a>
                        </h1>
                    </th>
                </tr>
        <c:forEach var="e" items="${tblproduct}">
            
            <tr>
                <td>${e.id}</td>
                <td>${e.productNama}</td>
                <td><a href="${pageContext.request.contextPath}/order/add/${e.id}" class="btn btn-primary">Add to cart</a></td>
            </tr>
        </c:forEach>
        </table>
            <!--div>
                <img src="https://brain-images-ssl.cdn.dixons.com/4/0/10152504/u_10152504.jpg" alt="yoms">
            </div-->
    </body>
</html>
