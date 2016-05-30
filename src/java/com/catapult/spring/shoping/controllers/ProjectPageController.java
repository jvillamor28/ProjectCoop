/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.controllers;

import com.catapult.spring.shoping.form.Project;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author jc
 */
@Controller
@RequestMapping("Project")
public class ProjectPageController {
    
    @RequestMapping(value = "/projects", method = RequestMethod.GET)
    public String getDashboard() {
        return "project/projects";
    }
    
    @RequestMapping(value="/newProject", method = RequestMethod.GET)
    public String getNewProject() {
        return "project/project-new";
    }
    
    @RequestMapping(value="/projectDetails", method = RequestMethod.GET)
    public String getProjectDetails() {
        return "project/projectDetails";
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Project saveProject(@RequestBody Project project) {
        return null;
    }
    
}
