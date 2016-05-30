/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.catapult.spring.shoping.dao;


import com.catapult.spring.shoping.common.EntityDAO;
import com.catapult.spring.shoping.common.EntityPreparedStatementCreator;
import com.catapult.spring.shoping.common.TableObjectDAO;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 * A dao repository that used 'cisJdbcTemplate' as JdbcTemplate
 * id=cisrepository
 * @author Michael
 */
@Repository("shopingrepository")
public class ShopingRepository implements DAORepository {

    @Resource(name = "jdbcTemplate")
    private JdbcTemplate template;
    
    @Override
    public JdbcTemplate getTemplate() {
        return template;
    }
    
    private final Object objlock = new Object();
    private final Map<String, EntityDAO> entityDAQueue = new HashMap<String, EntityDAO>();
    private final Map<String, String> namedSqls = new HashMap<String, String>();
    
    /**
     * Lookup EntityDAO instance based from class <T> specified
     * Class <T> must have an annotation of @Table
     * if the EntityDAO already existed based from Class<T> it will just return the created dao
     * else it will create a new instance of TableObjectDAO<T> and add to cached dao objects
     * @param <T>
     * @param clazz
     * @return EntityDAO<T>
     */
    @Override
    public <T> EntityDAO<T> lookup(Class<T> clazz){
        EntityDAO<T> dao = entityDAQueue.get(clazz.getName());
        if(dao == null){
            synchronized(objlock){
                dao = entityDAQueue.get(clazz.getName());
                if(dao != null) 
                    return dao;
                
                dao = new TableObjectDAO<T>( getTemplate(), clazz );
                entityDAQueue.put(clazz.getName(), dao);
            }
        }
        return dao;
    }

    @Override
    public <T> List<T> queryByName(String sqlName, Object[] params, RowMapper<T> mapper) {
        return query(getStatement(sqlName), params, mapper);
    }
    
    private String getStatement(String sqlName) {
        synchronized(objlock) {
            String sql = namedSqls.get(sqlName);
            if(sql != null) 
                return sql;
            BufferedReader reader = null;
            StringBuilder sb = new StringBuilder();
            String line = null;
            try{
                reader = new BufferedReader(new InputStreamReader(Thread.currentThread().getContextClassLoader().getResourceAsStream( "/META-INF/sql/"+ sqlName + ".sql")));
                while((line = reader.readLine()) != null)
                    sb.append(line);
                
                namedSqls.put(sqlName, sb.toString());
                return namedSqls.get(sqlName);
            }catch(IOException e){
                throw new IllegalStateException("There is no sql named " + sqlName, e);
            }finally{
                try{ reader.close(); }catch(Exception ign){}
            }
        }
    }

    @Override
    public <T> List<T> query(String sql, Object[] params, RowMapper<T> mapper) {
        return this.getTemplate().query(new EntityPreparedStatementCreator(sql, params), mapper);
    }
    
}
