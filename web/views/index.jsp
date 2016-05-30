<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout/" %>
<%@taglib prefix="form" tagdir="/WEB-INF/tags/form/" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<layout:page title="index" isLoginPage="true">
    <div class="wrapper-login">
        <div class="content-container content-container-full">
            <div class="login-wrapper">
                <h1> Login Portal </h1>
                <div class="login-container">
                    <form:form action="${contextPath}/login" method="POST">
                        <form:input id="username" name="j_username" label="Username" placeHolder="Username" type="text"/>
                        <form:input id="password" name="j_password" label="Password" placeHolder="Password" type="password"/>
                        <form:buttons>
                            <button type="reset" class="but-cancel cancel-btn">Cancel</button>
                            <button type="submit" class="save-task-btn"><span class="save-task-icon">Login</span></button> 
                        </form:buttons>
                    </form:form>
                    <div class="lock-icon"></div>
                </div>
            </div>
        </div>
    </div>	
</layout:page>