/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.catapult.spring.shoping.common;

/**
 *
 * @author Michael
 */
public class Criteria {

    private CriteriaCondition condition;
    
    public static CriteriaCondition where(String colname) {
        return new CriteriaCondition(colname);
    }
    
    public static Criteria empty(){
        return new CriteriaCondition().getCriteria();
    }
    
    Criteria(CriteriaCondition condition) {
        this.condition = condition;
    }

    public CriteriaCondition and(String colName) {
        condition.addCondition("AND " + colName);
        return condition;
    }

    public CriteriaCondition or(String colName) {
       condition.addCondition("OR ");
       condition.addCondition(colName);
       return condition;
    }

    public Criteria orderby(String[] list, String order) {
        condition.addCondition("ORDER BY ");
        for(int i=0; i < list.length; i++){
            if( i != 0) condition.addCondition(", ");
            condition.addCondition(order);
        }
        condition.addCondition(order);
        return this;
    }
    
    public Criteria offet(int value) {
        condition.setOffset(value);
        return this;
    }
    
    public Criteria limit(int value) {
        condition.setLimit(value);
        return this;
    }
    
    public int limit(){
        return condition.getLimit();
    }
    
    public int offset(){
        return condition.getOffset();
    }

    @Override
    public String toString() {
        return condition.toString();
    }
    
    public Object[] getParameters(){
        return condition.getParameters();
    }
}
