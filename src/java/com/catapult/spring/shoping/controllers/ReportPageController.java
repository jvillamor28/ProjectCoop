/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author jc
 */
@Controller
@RequestMapping("Report")
public class ReportPageController {
    
    @RequestMapping(value = "/reports", method = RequestMethod.GET)
    public String getReportPage() {
        return "report/reports";
    }
}
