<%-- 
    Document   : project-new
    Created on : Aug 11, 2014, 5:41:39 PM
    Author     : jc
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout/" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<layout:page title="New Project" isLoginPage="false">
    <jsp:attribute name="scripts"> 
        
        <script src="${contextPath}/resources/js/ajaxController.js"></script>
        <script src="${contextPath}/resources/js/project/project.js"></script>
        <script src="${contextPath}/resources/js/jquery.MultiFile.js" type="text/javascript"></script>
        <script>
            /* select auto complete */
//            $(document).ready(function() {
//                $("input#autocomplete").autocomplete({
//                    source: ["Client I", "Client 2", "Client 3", "Client 4", "Client 5", "Client 6", "Client 7"]
//                });
//            });
        </script>
    </jsp:attribute>

    <jsp:body>
        <div class="wrapper">
            <layout:sidebar />
            <div class="content-container">
                <h3 class="widget-title content-title">Projects / New Project</h3>

                <form class="form-content">
                    <!--<div><p><label>Select Client:</label><input id="autocomplete" type="text" name="select_client"></p></div>-->
                    <div><p><label>Project Title:</label><input type="text" name="project_title"></p></div>
                    <div><p><label>Notes for this project:</label><input type="text" name="project_notes"></p></div>
                    <div><p><label>Project website url:</label><input type="text" name="website"></p></div>
                    <div><p><label>Project dates (start, finish):</label><input type="text" name="date-from"  class="date-from date"><strong>&nbsp;&nbsp;to&nbsp;&nbsp;</strong><input  type="text" name="date-to" class="date-from date fright"></p></div>
                    <div><p><label>Project category</label>
                            <select id="projectCategory" name="projectCategory" class="valid">
                                <option>Select Category</option>
                                <option value="Dedicated">Dedicated</option>
                                <option value="Per project">Per porject</option>
                                <option value="Prepaid">Prepaid</option>
                            </select>
                        </p></div>
                    <div><p><label>Status</label>
                            <select id="projectStatus" name="projectStatus" class="valid">
                                <option selected="selected" value="0">Not started</option>
                                <option value="1">In progress</option>
                                <option value="2">Completed</option>
                                <option value="3">On hold</option>
                            </select>
                        </p></div>

                    <div>
                        <p>
                            <button type="button" class="save-task-btn"><span class="save-task-icon">Save Client</span></button> 
                        </p>
                    </div>
                </form>

            </div>
        </div>
    </jsp:body>
</layout:page>
