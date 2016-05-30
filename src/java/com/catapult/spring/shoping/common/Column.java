/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.catapult.spring.shoping.common;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Used to identify the a field of a class to be treated as a database table column
 * @author Michael
 */
@Target(value = {ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Column {
    public String name();
    public ColumnType type() default ColumnType.DEFAULT;
    public boolean id() default false;
    public boolean serial() default false;
}
