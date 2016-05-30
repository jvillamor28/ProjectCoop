<%-- 
    Document   : sidebar
    Created on : Aug 11, 2014, 2:36:20 PM
    Author     : jc
--%>
<aside class="main-sidebar">
    <h3 class="widget-title">New task</h3>
    <div class="sidebar-box">
        <div class="sidebar-container">
            <div class="add-task">
                <span class="add-icon">&nbsp;</span>Add Task
            </div>
            <div class="add-task-form" style="display: none;">
                <form method="POST" action="#">	
                    <div>
                        <label>Task</label>
                        <input type="text" class="task-title"/>
                    </div>
                    <div>
                        <label>When:</label>
                        <input type="text" name="date-from"  class="date-from date"/><strong>&nbsp;&nbsp;&nbsp;to</strong><input  type="text" name="date-to" class="date-to date fright"/>
                    </div>
                    <div>
                        <label>Select project:</label>
                        <select><option value="0">Select Project -</option><option value="30238">Project I</option><option value="30530">Project II</option></select>
                    </div>
                    <div>
                        <label>Note:</label>
                        <textarea class="task-note"></textarea>
                    </div>
                    <div>
                        <button type="submit" class="save-task-btn"><span class="save-task-icon">Save</span></button> 
                        <button type="reset" class="but-cancel cancel-btn">Cancel</button>
                    </div>
                </form>
            </div>
            <!--sidebar accordion-->
            <div id="accordion">
                <h3><a href="#">3 Today</a></h3>
                <div class="display-task">
                    <ul class="tasks-list">
                        <li><a href="#">WP Integration</a><br/>
                            - Client Name 1<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                        <li><a href="#">HTML / CSS Coding Implementation</a><br/>
                            - Client 2<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                        <li><a href="#">PHilweb Mockup PMS</a><br/>
                            - Client 3<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                    </ul>
                    <ul class="pagination">
                        <li><a href="#" class="active">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                    </ul>
                </div>
                <h3><a href="#">3 This week</a></h3>
                <div class="display-task">
                    <ul class="tasks-list">
                        <li><a href="#">WP Integration</a><br/>
                            - Client Name 1<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                        <li><a href="#">HTML / CSS Coding Implementation</a><br/>
                            - Client 2<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                        <li><a href="#">PHilweb Mockup PMS</a><br/>
                            - Client 3<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                    </ul>
                    <ul class="pagination">
                        <li><a href="#" class="active">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                    </ul>
                </div>
                <h3><a href="#">3 Overdue task</a></h3>
                <div class="display-task">
                    <ul class="tasks-list">
                        <li><a href="#">WP Integration</a><br/>
                            - Client Name 1<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                        <li><a href="#">HTML / CSS Coding Implementation</a><br/>
                            - Client 2<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                        <li><a href="#">PHilweb Mockup PMS</a><br/>
                            - Client 3<br/>
                            <span class="gray">Due today (Apr 17, 12:00 pm)</span>
                        </li>
                    </ul>
                    <ul class="pagination">
                        <li><a href="#" class="active">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</aside>