<%-- 
    Document   : customerdetail
    Created on : Dec 13, 2017, 3:12:12 PM
    Author     : imam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
        <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
    </head>
    
    <body>
        <div class="jumbotron">
        <h1>${product.productNama}</h1>
        </div>
        <p>
            Harga: ${product.harga} IDR
            Stok: ${product.stok} pcs
        </p>
    </body>
</html>
