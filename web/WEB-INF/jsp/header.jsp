<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <div class="jumbotron">
        <h1>JD.ID</h1> 
        <p>The Biggest Shopping Network</p> 
        <h3><a href="${pageContext.request.contextPath}/order/show">Cart: ${cart.carts.size()}</a></h3>
        <div><a href="${pageContext.request.contextPath}">Home</a></div>
        <c:if test="${not empty sessionScope.user}">
            <div><a href="${pageContext.request.contextPath}/logout">Logout</a></div>
        </c:if>

    </div>

</div>
