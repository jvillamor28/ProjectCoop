/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

/**
 *
 * @author jc
 */
public class AuthSuccessHandler implements AuthenticationSuccessHandler {

    private static final org.slf4j.Logger LOGGER
            = LoggerFactory.getLogger(AuthSuccessHandler.class);
    
    @Override
    public void onAuthenticationSuccess(HttpServletRequest hsr, HttpServletResponse res, Authentication a) throws IOException, ServletException {
        LOGGER.info("Successful Log.in ");
        res.sendRedirect("Project/projects");
    }
    
}
