<%-- 
    Document   : project
    Created on : Aug 11, 2014, 2:43:47 PM
    Author     : jc
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout/" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<layout:page isLoginPage="false" title="Project List">
    <div class="wrapper">
        <layout:sidebar /> <!---side bar--->
        
        <div class="content-container">
            <h3 class="widget-title content-title">Projects <button onclick="location.href = '${contextPath}/Project/newproject'"  class="fright new-project-btn"><span class="new-project-icon">New Project</span></button></h3>
            <div id="b-tabs">
                <ul>
                    <li><a href="#tabs-1">Projects</a></li>
                </ul>
                <div id="tabs-1"> 
                    <div class="tabs-header">
                        <div class="content-search">
                            <form name="search client form" >
                                <input type="text" value="Search Project" onfocus="clearField(this)" onblur="setField(this)" class="search-field fleft"/>
                                <button class="search-button">Search</button>
                            </form>
                        </div>
                        <div class="content-pagination">
                            <label><strong>Display 1 to 6 of 40 Projects</strong></label> &#124; <span class="gray">Show</span>
                            <select>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </select>
                        </div>
                    </div>
                    <ul class="view-list">
                        <li><!-- first project -->
                            <div class="list-heading">
                                <h3>
                                    <a href="${contextPath}/Project/projectDetails" class="active">Kulayfull</a>
                                </h3>
                                <a class="close-icon" href="#" onClick="return confirm('Are you sure you want to delete project?')"></a>
                                <a class="edit-icon" href="new-project.html"></a>
                            </div>
                            <div class="list-box list-box--wide">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum elit nec nulla faucibus eget ornare libero fermentum. Suspendisse lobortis accumsan eros dignissim iaculis. Maecenas elementum lobortis leo nec dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed mollis consequat ornare.</p>
                            </div>
                            <div class="list-box">
                                <div class="status-info-box">
                                    <div class="status status-header in-progress"><span class="in-progress-icon">In Progress</span></div>
                                    <p class="project-date">
                                        <a href="#">May 9, 2012 to Jun 8, 2012</a>
                                    </p>
                                    <p class="client-website">
                                        <a href="#">clientwebsite.com</a>
                                    </p>
                                    <p class="client-name">
                                        <a href="#">Clientname Judan</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li><!-- second project -->
                            <div class="list-heading">
                                <h3>
                                    <a href="${contextPath}/Project/projectDetails" class="active">Melbourne Sound</a>
                                </h3>
                                <a class="close-icon" href="#" onClick="return confirm('Are you sure you want to delete project?')"></a>
                                <a class="edit-icon" href="new-project.html"></a>
                            </div>
                            <div class="list-box list-box--wide">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum elit nec nulla faucibus eget ornare libero fermentum. Suspendisse lobortis accumsan eros dignissim iaculis. Maecenas elementum lobortis leo nec dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed mollis consequat ornare.</p>
                            </div>
                            <div class="list-box">
                                <div class="status-info-box">
                                    <div class="status status-header complete"><span class="complete-icon">Completed</span></div>
                                    <p class="project-date">
                                        <a href="#">May 9, 2012 to Jun 8, 2012</a>
                                    </p>
                                    <p class="client-website">
                                        <a href="#">clientwebsite.com</a>
                                    </p>
                                    <p class="client-name">
                                        <a href="#">Clientname Judan</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li><!-- third project -->
                            <div class="list-heading">
                                <h3>
                                    <a href="${contextPath}/Project/projectDetails" class="active">Snugbods</a>
                                </h3>
                                <a class="close-icon" href="#" onClick="return confirm('Are you sure you want to delete project?')"></a>
                                <a class="edit-icon" href="new-project.html"></a>
                            </div>
                            <div class="list-box list-box--wide">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum elit nec nulla fauc ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum elit nec nulla faucibus.</p>
                            </div>
                            <div class="list-box">
                                <div class="status-info-box">
                                    <div class="status status-header pastdue">Past Due</div>
                                    <p class="project-date">
                                        <a href="#">May 9, 2009 to Jun 8, 2012</a>
                                    </p>
                                    <p class="client-website">
                                        <a href="#">clientwebsite.com</a>
                                    </p>
                                    <p class="client-name">
                                        <a href="#">Clientname Judan</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li><!-- fourth project -->
                            <div class="list-heading">
                                <h3>
                                    <a href="${contextPath}/Project/projectDetails" class="active">Smart Phone Shop</a>
                                </h3>
                                <a class="close-icon" href="#" onClick="return confirm('Are you sure you want to delete project?')"></a>
                                <a class="edit-icon" href="new-project.html"></a>
                            </div>
                            <div class="list-box list-box--wide">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum elit nec nulla fauc ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum fauc ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum fauc ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum elit nec nulla faucibus.</p>
                            </div>
                            <div class="list-box">
                                <div class="status-info-box">
                                    <div class="status status-header notstarted">Not Started</div>
                                    <p class="project-date">
                                        <a href="#">May 9, 2009 to Jun 8, 2012</a>
                                    </p>
                                    <p class="client-website">
                                        <a href="#">clientwebsite.com</a>
                                    </p>
                                    <p class="client-name">
                                        <a href="#">Clientname Judan</a>
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li><!-- fourth project -->
                            <div class="list-heading">
                                <h3>
                                    <a href="${contextPath}/Project/projectDetails" class="active">Boracay Adventures</a>
                                </h3>
                                <a class="close-icon" href="#" onClick="return confirm('Are you sure you want to delete project?')"></a>
                                <a class="edit-icon" href="new-project.html"></a>
                            </div>
                            <div class="list-box list-box--wide">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum elit num dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum fauc ipsum dolor sit amet, consectetur adipiscing elit. Ut in sapien nibh. Sed bibendum elit nec nulla faucibus.</p>
                            </div>
                            <div class="list-box">
                                <div class="status-info-box">
                                    <div class="status status-header paused"><span class="paused-icon">On Hold</span></div>
                                    <p class="project-date">
                                        <a href="#">May 9, 2009 to Jun 8, 2012</a>
                                    </p>
                                    <p class="client-website">
                                        <a href="#">clientwebsite.com</a>
                                    </p>
                                    <p class="client-name">
                                        <a href="#">Clientname Judan</a>
                                    </p>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>
    </div>
</layout:page>