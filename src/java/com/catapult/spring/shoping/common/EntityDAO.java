/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.common;

import java.util.List;
import org.springframework.jdbc.core.RowMapper;

/**
 * interface to used the basic functionality of CRUD database
 * @author CATPH
 * @param <T>
 */
public interface EntityDAO <T> {
    
    public T insert(T entity) throws Exception;
    public List<T> insert(List<T> entities) throws Exception;
    
    public T update(T entity) throws Exception;
    public List<T> update(List<T> entities) throws Exception;
    
    public T delete(T entity) throws Exception;
    public List<T> delete(List<T> entities) throws Exception;

    public List<T> list(String condition, Object[] args) throws Exception;
    public List<T> list(String condition, Object[] args, int limit) throws Exception;
    public List<T> list(String condition, Object[] args, int limit, int offset) throws Exception;
    public List<T> list(Criteria criteria) throws Exception;
    public T single(String condition, Object[] args) throws Exception;
    public T single(Criteria criteria) throws Exception;
    
    public List<T> query(String sql, Object[] condition) throws Exception;
    public <V> List<V> query(Class<V> type, String sql, Object[] args, RowMapper mapper) throws Exception;
}
