/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.catapult.spring.shoping.common;

import com.catapult.spring.shoping.auth.AppUserDetails;
import java.util.ArrayList;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 * Class that has basic functionality of CRUD
 * @author mramos<mramos@gotacapult.com>
 * @param <T>
 */
public abstract class AbstractEntityDAO<T> implements RowMapper<T>, EntityDAO<T> {
    
    @Override
    public final List<T> insert(List<T> entities) throws Exception{
        List<T> results = new ArrayList<T>();
        for (T entity : entities)
            results.add(insert(entity));
        return results;
    }

    @Override
    public final List<T> update(List<T> entities) throws Exception{
        List<T> results = new ArrayList<T>();
        for (T entity : entities)
            results.add(update(entity));
        return results;
    }
    
    @Override
    public final List<T> delete(List<T> entities) throws Exception{
        List<T> results = new ArrayList<T>();
        for (T entity : entities) 
            results.add(delete(entity));
        return results;
    }

    @Override
    public final List<T> list(String condition, Object[] args, int limit) throws Exception{
        StringBuilder sb = new StringBuilder(condition == null ? "" : condition);
        if(limit > 0)
            sb.append(" LIMIT ").append(limit);
        return list(sb.toString(), args);
    }

    @Override
    public final List<T> list(String condition, Object[] args, int limit, int offset)throws Exception {
        StringBuilder sb = new StringBuilder(condition == null ? "" : condition);
        if(offset > 0)
            sb.append(" OFFSET ").append(offset);
        return list(sb.toString(), args, limit);
    }
    
    @Override
    public final List<T> list(Criteria criteria) throws Exception {
        return list(criteria.toString(), criteria.getParameters(), criteria.limit(), criteria.offset());
    }

    @Override
    public final T single(String condition, Object[] args) throws Exception{
        List<T> results = list(condition, args, 1);
        return results.size() > 0 ? results.get(0) : null;
    }
    
    @Override
    public final T single(Criteria criteria) throws Exception{
        criteria.limit(1);
        List<T> results = list(criteria);
        return results.size() > 0 ? results.get(0) : null;
    }

    /**
     * @return the jdbcTemplate
     */
    public abstract JdbcTemplate getJdbcTemplate();
    
    @Override
    public final <V> List<V> query(Class<V> type, String sql, Object[] args, RowMapper mapper) throws Exception{
        return getJdbcTemplate().query( new EntityPreparedStatementCreator(sql, args) , mapper);
    }
    
    @Override
    public final List<T> query(String sql, Object[] args) throws Exception {
        return getJdbcTemplate().query(sql, args, this);
    }
}
