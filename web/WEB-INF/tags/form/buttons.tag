<%-- 
    Document   : buttons
    Created on : Aug 8, 2014, 3:57:05 PM
    Author     : jc
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${isLoginPage}">
        <div class="button-cont">
            <jsp:doBody/>
        </div>
    </c:when>
    <c:otherwise>
        <div>
            <p>
                <jsp:doBody/>
            </p>
        </div>
    </c:otherwise>
</c:choose>