<%-- 
    Document   : customerdetail
    Created on : Dec 13, 2017, 3:12:12 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="navbar.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
    </head>
    <jsp:include page="navbar.jsp"/>
    <body>
        <h1>${product.productNama}</h1>
        <p>
            Harga: ${product.harga} IDR
            Stok: ${product.stok} pcs
        </p>
    </body>
</html>
