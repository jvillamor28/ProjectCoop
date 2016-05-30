/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.dao;


import com.catapult.spring.shoping.common.EntityDAO;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 * DAORepository interface to be used in the Service classes
 * @author Michael
 */
public interface DAORepository {
    /**
     * must override to select the JdbcTemplate 
     * @return 
     */
    public JdbcTemplate getTemplate();
    
    /**
     * must override and implement the logic for loading the entity dao based on the class specified.
     * @param <T>
     * @param clazz
     * @return 
     */
    public <T> EntityDAO<T> lookup(Class<T> clazz);
    public <T> List<T> queryByName(String sqlName, Object[] params, RowMapper<T> mapper);
    public <T> List<T> query(String sql, Object[] params, RowMapper<T> mapper);
}
