<%-- 
    Document   : input
    Created on : Aug 8, 2014, 3:01:14 PM
    Author     : jc
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="id"%>
<%@attribute name="type" required="true"%>
<%@attribute name="name" %>
<%@attribute name="label" %>
<%@attribute name="placeHolder"%>

<c:choose>
    <c:when test="${isLoginPage}">
        <label for="${name}">
            ${label}: <br>
            <input type="${type}" name="${name}" class="${name}" placeholder="${placeHolder}" />
        </label>
    </c:when>
    <c:otherwise>
        <div>
            <p>
                <label for="${name}">${label}:</label>
                <input id="${id}" type="${type}" name="${name}" />
            </p>
        </div>
    </c:otherwise>       
</c:choose>


