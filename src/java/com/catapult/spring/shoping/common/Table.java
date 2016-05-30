/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.common;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * Used to identify a class that needs to be treated as database table
 * @author Michael
 */
@Retention(RetentionPolicy.RUNTIME)
public @interface Table {
    public String value();
}
