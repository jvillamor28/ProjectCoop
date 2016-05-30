/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.jdbc.core.PreparedStatementCreator;

/**
 * Custom PreparedStatement Creator this will be used in AbstractEntityDAO
 * @author CATPH
 */
public class EntityPreparedStatementCreator implements PreparedStatementCreator{

    private static final SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private String statement;
    private Object[] params;
    
    public EntityPreparedStatementCreator(String statement, Object[] params){
        this.statement = statement;
        this.params = params;
    }
    
    @Override
    public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
        int type = statement.toLowerCase().startsWith("insert") ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS;
        PreparedStatement ps = cnctn.prepareStatement(statement, type);
        for(int i=0; i < params.length; i++) {
            Object parameter = params[i];
            if( parameter instanceof Date )
                ps.setObject(i+1, Timestamp.valueOf(dateFormatter.format(parameter)));
            else
                ps.setObject(i+1, parameter);
        }
        return ps;
    }
}
