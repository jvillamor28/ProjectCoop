<%-- 
    Document   : form
    Created on : Aug 4, 2014, 4:33:45 PM
    Author     : jc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="action" %>
<%@attribute name="method" %>

<form action="${not empty action ? action: ''}" method="${not empty method ? method: ''}">
    <jsp:doBody/>
</form>