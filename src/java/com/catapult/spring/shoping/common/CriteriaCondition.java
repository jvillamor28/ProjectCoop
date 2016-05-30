/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.catapult.spring.shoping.common;

import java.util.ArrayList;
import java.util.List;

/**
 * Utility can be used to create a where statement in sql statement
 *
 * @author Marlon Ancajas
 */
public class CriteriaCondition {

    public static final String ASC = "asc";
    public static final String DEC = "DEC";
    public static final String EQUAL = "=";
    public static final String NOT_EUAL = "<>";
    public static final String LESSER_THAN = "<";
    public static final String GREATER_THAN = ">";
    public static final String GREATER_OR_EQUAL = ">=";
    public static final String LESSER_OR_EQUAL = "<=";
    public static final String SPACE = " ";
    public static final String ZERO_OR_MORE = "%";
    public static final String SINGLE_CHAR = "_";

    private StringBuilder sb = new StringBuilder();
    private Criteria condition;
    private List<Object> params = new ArrayList<Object>();
    
    private int offset = -1;
    private int limit = -1;
    
    CriteriaCondition(){
        this.condition = new Criteria(this);
    }
    
    CriteriaCondition(String colName) {
        sb.append(SPACE).append(colName);
        this.condition = new Criteria(this);
    }

    public Criteria greaterThan(Object value) {
        sb.append(GREATER_THAN).append(SPACE);
        addParamValue(value);
        return getCriteria();
    }

    public Criteria equal(Object value) {
        sb.append(EQUAL).append(SPACE);
        addParamValue(value);
        return getCriteria();
    }

    public Criteria lessThan(Object value) {
        sb.append(LESSER_THAN).append(SPACE);
        addParamValue(value);
        return getCriteria();
    }

    public Criteria greaterThanOrEqual(Object value) {
        sb.append(GREATER_OR_EQUAL).append(SPACE);
        addParamValue(value);
        return getCriteria();
    }

    public Criteria lessThanOrEqual(Object value) {
        sb.append(LESSER_OR_EQUAL).append(SPACE);
        addParamValue(value);
        return getCriteria();
    }

    public Criteria like(Object value) {
        sb.append(" LIKE ").append(SPACE);
        addParamValue(value);
        return getCriteria();
    }
    
    void addParamValue(Object value) {
        this.sb.append("? ").append(SPACE);
        this.params.add(value);
    }
    
    void addCondition(String cond){
        this.sb.append(cond).append(SPACE);
    }
    
    Object[] getParameters(){
        return params.toArray();
    }

    @Override
    public String toString() {
        return sb.toString();
    }

    /**
     * @return the offset
     */
    int getOffset() {
        return offset;
    }

    /**
     * @param offset the offset to set
     */
    void setOffset(int offset) {
        this.offset = offset;
    }

    /**
     * @return the limit
     */
    int getLimit() {
        return limit;
    }

    /**
     * @param limit the limit to set
     */
    void setLimit(int limit) {
        this.limit = limit;
    }

    /**
     * @return the condition
     */
    Criteria getCriteria() {
        return condition;
    }
    
}
