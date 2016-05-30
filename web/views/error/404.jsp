<%-- 
    Document   : 404
    Created on : Aug 11, 2014, 1:08:55 PM
    Author     : jc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout/" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<layout:page isLoginPage="false" header="Access Denied">
    <h1>Access Denied sample</h1>
</layout:page>