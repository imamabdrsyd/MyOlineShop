<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <div class="jumbotron">
        <h1>LAZADUT</h1> 
        <p>The Biggest Shopping Network</p>
        <c:if test="${not empty sessionScope.user}">
            <div><a href="${pageContext.request.contextPath}/logout">Logout</a></div>
        </c:if>

    </div>

</div>
