<%-- 
    Document   : page
    Created on : Aug 4, 2014, 4:56:05 PM
    Author     : jc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="title" rtexprvalue="true"%>
<%@attribute name="header" fragment="true"%>
<%@attribute name="styles" fragment="true"%>
<%@attribute name="scripts" fragment="true"%>
<%@attribute name="isLoginPage" rtexprvalue="true" required="true" %>


<c:set var="isLoginPage" value="${isLoginPage}" scope="request"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>${title}</title>
        <link href="${contextPath}/resources/css/style.css" rel="stylesheet"/>
        <link href="${contextPath}/resources/css/base/jquery.ui.base.css" media="all" rel="stylesheet"/>
        <link href="${contextPath}/resources/css/base/jquery.ui.theme.css" media="all" rel="stylesheet"/>
        <jsp:invoke fragment="styles"/>
    </head>
    <body>
        <header>
            <div class="header-container">
                <div class="logo"></div>
                <jsp:invoke fragment="header" var="headerContent"/>
                <c:if test="${!isLoginPage}">
                    <div class="user-info">
                        <div class="avatar">
                            <img src="" />
                        </div>
                        <ul class="utilities">
                            <li><a href="#" class="dashboard"></a></li>
                            <li><a href="#" class="settings"></a></li>
                            <li><a href="#" class="message"><span class="msg-notify">4</span></a></li>
                            <li><a href="#" class="logout"></a></li>
                        </ul>
                        <div class="user-name"><span class="greetings">Welcome!</span> Jared Yu<span class="job-title">notepad developer</span></div> 
                    </div>
                    <div class="clr"></div>
                </c:if>
            </div>
        </header>

         
        <c:if test="${!isLoginPage}">
            <!--navigation-->       
            <nav class="nav-container">
                <div class="wrap">
                    <ul class="main-nav">
                        <!-- CLIENT MENU
                        <li><a href="index.html" class="active">Clients</a>
                            <ul class="subnav">
                                <li><a href="index.html">View Client</a></li>
                                <li><a href="new-client.html">New Client</a></li>
                            </ul>
                        </li>
                        -->
                        <li><a href="${contextPath}/Project/projects" class="active">Projects</a>
                            <ul class="subnav">
                                <li><a href="${contextPath}/Project/projects">View Projects</a></li>
                                <li><a href="${contextPath}/Project/newProject">New Projects</a></li>
                            </ul>
                        </li>
                        <li><a href="${contextPath}/Report/reports">Reports</a></li>
                        <li><a href="files.html">Files</a></li>
                        <li><a href="team.html">My Team</a></li>
                    </ul>
                    <div class="search">
                        <form name="search form">
                            <input type="text" value="Search..." onfocus="clearField(this)" onblur="setField(this)" class="search-field fleft">
                            <button class="search-button">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </c:if>

        <!--main page-->
        <section class="main-content">
            <jsp:doBody/>
        </section>

        <!--FOOTER-->
        <footer>
            <div class="wrap">
                <p class="copy">&COPY; 2014 Catapult Int'l LLC. All rights reserved.</p>
                <div class="logo-small"></div>
            </div>
        </footer>
    </body>
	
    <script src="${contextPath}/resources/js/jquery.js" type="text/javascript"></script>
    <script src="${contextPath}/resources/js/jquery-ui-1.8.js" type="text/javascript" ></script>
    <script src="${contextPath}/resources/js/form-info.js"></script>
    <script src="${contextPath}/resources/js/global.js" type="text/javascript"></script>
    <jsp:invoke fragment="scripts"/>
</html>

<% request.removeAttribute("isLoginPage");%>