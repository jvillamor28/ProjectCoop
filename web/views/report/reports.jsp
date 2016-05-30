<%-- 
    Document   : reports
    Created on : Aug 12, 2014, 1:28:53 PM
    Author     : jc
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout/" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<layout:page isLoginPage="false" title="Reports">
    <jsp:attribute name="scripts">
        <script src="${contextPath}/resources/js/jquery.dataTables.js" type="text/javascript"></script>
    </jsp:attribute>
    <jsp:body>
        <div class="wrapper">
            <layout:sidebar /> <!---sidebar-->
            <div class="content-container">
                <div id="b-tabs">
                    <ul>
                        <li><a href="#tabs-1">Reports</a></li>
                    </ul>
                    <div id="tabs-1">
                        <div class="table-container">
                            <table cellpadding="0" cellspacing="0" border="0" class="table-content" id="example" width="100%">
                                <thead>
                                    <tr>
                                        <th width="200">Task</th>
                                        <th width="250">Hours Spent</th>
                                        <th>Hours / Estimated</th>
                                        <th>Progress</th> 
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="gradeA">
                                        <td class="report-icon">BigTicket</td>
                                        <td><div class="percent">47.65</div>
                                            <section class="meter">
                                                <span style="width:47.65%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">47.65</td>
                                        <td class="align-center">70%</td>
                                    </tr>
                                    <tr class="gradeC">
                                        <td class="report-icon">Lone Star Mock-up</td>
                                        <td><div class="percent">90</div>
                                            <section class="meter">
                                                <span style="width:90%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">100</td>
                                        <td class="align-center">70%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">Alexandra - Online Form</td>
                                        <td><div class="percent">60.65</div>
                                            <section class="meter">
                                                <span style="width:60.65%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">120</td>
                                        <td class="align-center">60%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">Boracay Adventures</td>
                                        <td><div class="percent">98.78</div>
                                            <section class="meter">
                                                <span style="width:98.78%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">100</td>
                                        <td class="align-center">99%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">Kulayful</td>
                                        <td><div class="percent">50.60</div>
                                            <section class="meter">
                                                <span style="width:50.60%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">80</td>
                                        <td class="align-center">72%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">InDesign - Mockup Design</td>
                                        <td><div class="percent">80</div>
                                            <section class="meter">
                                                <span style="width:80%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">120</td>
                                        <td class="align-center">70%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">Asurasel</td>
                                        <td><div class="percent">47.65</div>
                                            <section class="meter">
                                                <span style="width:47.65%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">47.65</td>
                                        <td class="align-center">70%</td>
                                    </tr>
                                    <tr class="gradeC">
                                        <td class="report-icon">Off-Page - Pageone- Seoservices</td>
                                        <td><div class="percent">90</div>
                                            <section class="meter">
                                                <span style="width:90%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">100</td>
                                        <td class="align-center">70%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">Smart Phone Shop</td>
                                        <td><div class="percent">60.65</div>
                                            <section class="meter">
                                                <span style="width:60.65%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">120</td>
                                        <td class="align-center">60%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">Brisbane Box</td>
                                        <td><div class="percent">98.78</div>
                                            <section class="meter">
                                                <span style="width:98.78%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">100</td>
                                        <td class="align-center">99%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">Love this City</td>
                                        <td><div class="percent">50.60</div>
                                            <section class="meter">
                                                <span style="width:50.60%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">80</td>
                                        <td class="align-center">72%</td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td class="report-icon">Weisman - Businesscard</td>
                                        <td><div class="percent">80</div>
                                            <section class="meter">
                                                <span style="width:80%"></span>
                                            </section>
                                        </td>
                                        <td class="align-center">120</td>
                                        <td class="align-center">70%</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</layout:page>