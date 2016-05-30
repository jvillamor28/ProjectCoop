<%-- 
    Document   : project
    Created on : Aug 11, 2014, 2:34:30 PM
    Author     : jc
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout/" %>

<layout:page isLoginPage="false" header="Projects Details">
    <div class="wrapper">
        <layout:sidebar />
        <div class="content-container">
            <h3 class="widget-title content-title">
                Project : Kulayfull
                <button onClick="return confirm('Are you sure you want to delete Client I?')"  class="fright del-content-btn">Delete</button>
                <button onclick="location.href = 'new-client.html'"  class="fright edit-content-btn"><span class="edit-content-icon">Edit</span></button>
            </h3>
            <div id="b-tabs">
                <ul>
                    <li><a href="#tabs-1">Project Details</a></li>
                    <li><a href="#tabs-2">Tasks (3)</a></li>
                    <li><a href="#tabs-3">Files (4) </a></li>
                    <li><a href="#tabs-4">Messages(2) </a></li>
                    <li><a href="#tabs-5">QA</a></li>
                </ul>
                <div id="tabs-1"> 
                    <div class="list-heading">
                        <h3>Kulayfull</h3>
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
                </div>

                <div id="tabs-2"> 
                    <div class="tabs-header">
                        <div class="tabs-header">
                            <button class="new-task-btn"><span class="new-task-icon">New Task</span></button>
                            <div class="task-container"> 
                                <form class="task-form" method="POST" action="#">	
                                    <div class="task-form-box">
                                        <div>
                                            <label>Name or title (Hit ENTER to save.)</label>
                                            <input type="text" name="" class="task-title"/>
                                        </div>
                                        <div>
                                            <label>Description</label>
                                            <textarea></textarea>
                                        </div>
                                    </div>
                                    <div class="task-form-box">
                                        <div>
                                            <label><span class="project-date">Dates (start : end)</span></label>
                                            <input type="text" class="start-date date-from"/>
                                            <input type="text" class="end-date date-to"/>
                                        </div>
                                        <div>
                                            <label><span class="icon-clock">Hours (actual / estimated)</span></label>
                                            <input class="hours" type="text">
                                        </div>
                                        <div>
                                            <label>Task priority:</label> 
                                            <section id="radio">
                                                <input type="radio" id="radio1" name="radio" /><label class="auto-width" for="radio1">Low</label>
                                                <input type="radio" id="radio2" name="radio" checked="checked" /><label class="auto-width" for="radio2">Medium</label>
                                                <input type="radio" id="radio3" name="radio" /><label class="auto-width" for="radio3">High</label>
                                                <input type="radio" id="radio4" name="radio" /><label class="auto-width" for="radio4">Extreme</label>
                                            </section>
                                        </div>
                                        <div>
                                            <label>Assign task to:</label>
                                            <input class="assign-task" type="text" name="assign-task"/>
                                        </div>
                                    </div>   
                                    <div class="clr"></div>
                                    <button type="submit" class="save-task-btn"><span  class="save-task-icon" >Save</span></button> 
                                    <button type="reset" class="cancel-task-btn">Cancel</button>
                                </form>
                            </div>
                        </div>
                        <div class="table-container paddingtop20">
                            <table cellpadding="0" cellspacing="0" border="0" class="table-content" id="example" width="100%">
                                <thead>
                                    <tr>
                                        <th>Created by</th>
                                        <th>Task</th>
                                        <th>Priority</th> 
                                        <th>Estimated</th> 
                                        <th>Worked</th> 
                                        <th></th> 
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="gradeA">
                                        <td><a href="#">Annalisa Quiamco</a></td>
                                        <td><a href="#"> Implementation Subpages</a></td>
                                        <td class="center">Extreme</td>
                                        <td class="center">40 hrs</td>
                                        <td class="center"><a href="#" class="clock-btn"></a></td>
                                        <td class="center"><a href="#" class="trash-btn"  onclick="return confirm('Are you sure you want to delete this task?')"></a></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td><a href="#">Annalisa Quiamco</a></td>
                                        <td><a href="#"> Implementation Subpages</a></td>
                                        <td class="center">Extreme</td>
                                        <td class="center">40 hrs</td>
                                        <td class="center"><a href="#" class="clock-btn"></a></td>
                                        <td class="center"><a href="#" class="trash-btn"  onclick="return confirm('Are you sure you want to delete this task?')"></a></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td><a href="#">Annalisa Quiamco</a></td>
                                        <td><a href="#"> Homepage Mockup </a></td>
                                        <td class="center">High</td>
                                        <td class="center">8 hrs</td>
                                        <td class="center"><a href="#" class="clock-btn"></a></td>
                                        <td class="center"><a href="#" class="trash-btn"  onclick="return confirm('Are you sure you want to delete this task?')"></a></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td><a href="#">Anna Len Gilig</a></td>
                                        <td><a href="#"> Wordpress Integration</a></td>
                                        <td class="center">Low</td>
                                        <td class="center">20 hrs</td>
                                        <td class="center"><a href="#" class="clock-btn"></a></td>
                                        <td class="center"><a href="#" class="trash-btn"  onclick="return confirm('Are you sure you want to delete this task?')"></a></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td><a href="#">Annalisa Quiamco</a></td>
                                        <td><a href="#"> Business Card</a></td>
                                        <td class="center">Extreme</td>
                                        <td class="center">4 hrs</td>
                                        <td class="center"><a href="#" class="clock-btn"></a></td>
                                        <td class="center"><a href="#" class="trash-btn"  onclick="return confirm('Are you sure you want to delete this task?')"></a></td>
                                    </tr>
                                    <tr class="gradeA">
                                        <td><a href="#">Anna Len Gilig</a></td>
                                        <td><a href="#">Joomla Integration</a></td>
                                        <td class="center">High</td>
                                        <td class="center">8 hrs</td>
                                        <td class="center"><a href="#" class="clock-btn"></a></td>
                                        <td class="center"><a href="#" class="trash-btn"  onclick="return confirm('Are you sure you want to delete this task?')"></a></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>

                <div id="tabs-3"> 
                    <div class="table-container">
                        <table cellpadding="0" cellspacing="0" border="0" class="table-content" id="example2" width="100%">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Files</th>
                                    <th>Date</th> 
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="gradeA">
                                    <td><img src="images/icon-zip.png" alt=""/></td>
                                    <td><a href="#"> PMS Implementation files</a> <span>(402.7kb)</span></td>
                                    <td>05/25/12 01:00 pm</td>
                                </tr>
                                <tr class="gradeC">
                                    <td><img src="images/icon-psd.png" alt=""/></td>
                                    <td><a href="#">valley-Front Homepage.jpg</a> <span>(1.7mb)</span></td>
                                    <td>05/25/12 01:00 pm</td>
                                </tr>
                                <tr class="gradeA">
                                    <td><img src="images/icon-pdf.png" alt=""/></td>
                                    <td><a href="#">valley-Front Homepage.jpg</a> <span>(1.7mb)</span></td>
                                    <td>05/25/12 01:00 pm</td>
                                </tr>
                                <tr class="gradeA">
                                    <td><img src="images/icon-word.png" alt=""/></td>
                                    <td><a href="#">valley-Front Homepage.jpg</a> <span>(1.7mb)</span></td>
                                    <td>05/25/12 01:00 pm</td>
                                </tr>
                                <tr class="gradeX">
                                    <td><img src="images/icon-psd.png" alt=""/></td>
                                    <td><a href="#">valley-Front Homepage.jpg</a> <span>(1.7mb)</span></td>
                                    <td>05/25/12 01:00 pm</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="tabs-4"> 
                    <div class="tabs-header">
                        <button class="send-message-btn"><span class="send-message-icon">Send a message</span></button>

                        <div class="msg-container">
                            <label>Send message to:</label>
                            <input type="text"/> <br/>
                            <button class="but-attach attach-btn" onclick="jQuery('#file').click()"><span class="attach-icon">Attach files</span></button>
                            <input type="file" class="hide multi" id="file" multiple="multiple"/><br/>
                            <label>Message:</label>
                            <textarea></textarea>
                            <div class="clr"></div>
                            <button type="submit" class="send-message-btn"><span class="send-message-icon" >Send  message</span></button> 
                            <button type="reset" class="cancel-message-btn">Cancel</button>
                        </div>
                    </div>

                    <div class="post-msg">
                        <div class="post-header">
                            <img src="images/avatar.jpg"/>
                            <p class="post-header-details">
                                <span>Annalisa Quiamco</span> April 23, 2:49 pm
                            </p>
                        </div>
                        <div class="post-content">
                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>						
                        </div>
                    </div>

                    <div class="post-msg">
                        <div class="post-header">
                            <img src="images/avatar.jpg"/>
                            <p class="post-header-details">
                                <span>Sarniel Morgia</span> April 23, 2:49 pm
                            </p>
                        </div>
                        <div class="post-content">
                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus es</p>						
                        </div>
                    </div>
                </div>
                <div id="tabs-5"> 
                    xzczc
                </div>
            </div>
        </div>
    </div>
</layout:page>