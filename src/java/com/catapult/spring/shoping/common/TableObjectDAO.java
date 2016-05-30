/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.catapult.spring.shoping.common;

import static com.catapult.spring.shoping.common.ColumnType.BIGDECIMAL;
import static com.catapult.spring.shoping.common.ColumnType.BOOLEAN;
import static com.catapult.spring.shoping.common.ColumnType.DATE;
import static com.catapult.spring.shoping.common.ColumnType.DEFAULT;
import static com.catapult.spring.shoping.common.ColumnType.DOUBLE;
import static com.catapult.spring.shoping.common.ColumnType.ENUM_ORDINAL;
import static com.catapult.spring.shoping.common.ColumnType.ENUM_STRING;
import static com.catapult.spring.shoping.common.ColumnType.INTEGER;
import static com.catapult.spring.shoping.common.ColumnType.LONG;
import static com.catapult.spring.shoping.common.ColumnType.TIME;
import static com.catapult.spring.shoping.common.ColumnType.TIMESTAMP;
import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

/**
 * Common Object class entity dao 
 * this dao process only object annotated with @Table annotation
 * @author Michael
 * @param <T>
 */
public class TableObjectDAO<T> extends AbstractEntityDAO<T> {

    private JdbcTemplate template;
    private Class<T> clazz;

    private Table table;
    private List<FieldColumn> columns = new ArrayList<FieldColumn>();

    public TableObjectDAO(JdbcTemplate template, Class<T> clazz) {
        this.template = template;
        this.clazz = clazz;
        this.table = this.clazz.getAnnotation(Table.class);

        if (table == null) {
            throw new IllegalStateException("Entity must have a Table annotation");
        }

        Field[] fields = clazz.getDeclaredFields();
        for (Field field : fields) {
            Column col = field.getAnnotation(Column.class);
            if(col != null)
                columns.add(new FieldColumn( col,field ));
        }
    }

    @Override
    public JdbcTemplate getJdbcTemplate() {
        return this.template;
    }

    @Override
    public T mapRow(ResultSet rs, int i) {
        try {
            T obj = clazz.newInstance();
            for(FieldColumn col : columns) {
                switch(col.getColumn().type()) {
                    case DEFAULT: col.setFieldValue(obj, rs.getObject(col.getColumn().name())); break;
                    case DATE: col.setFieldValue(obj, rs.getDate(col.getColumn().name())); break;
                    case BOOLEAN: col.setFieldValue(obj, rs.getBoolean(col.getColumn().name())); break;
                    case ENUM_ORDINAL: col.setFieldValue(obj, rs.getInt(col.getColumn().name())); break;
                    case ENUM_STRING: col.setFieldValue(obj, rs.getString(col.getColumn().name())); break;
                    case INTEGER: col.setFieldValue(obj, new Integer(rs.getInt(col.getColumn().name()))); break;
                    case LONG: col.setFieldValue(obj, new Long(rs.getLong(col.getColumn().name()))); break;
                    case DOUBLE: col.setFieldValue(obj, new Double(rs.getDouble(col.getColumn().name()))); break;
                    case BIGDECIMAL: col.setFieldValue(obj, rs.getBigDecimal(col.getColumn().name())); break;
                    case TIMESTAMP: col.setFieldValue(obj, rs.getTimestamp(col.getColumn().name())); break;
                    case TIME: col.setFieldValue(obj, rs.getTime(col.getColumn().name())); break;
                    default: break;
                }
            }
            return obj;
        } catch (Exception e) {
            throw new IllegalStateException(e.getMessage(), e);
        }
    }

    @Override
    public T insert(T entity) throws Exception {
        StringBuilder statement = new StringBuilder();
        StringBuilder values = new StringBuilder();
        statement.append("INSERT INTO ").append(table.value()).append("(");
        values.append("VALUES(");
        List<Object> params = new ArrayList<Object>();
        for (FieldColumn col : columns) {
            if (col.getColumn().serial()) continue;
            if (!params.isEmpty()) {
                statement.append(", ");
                values.append(", ");
            }

            statement.append(col.getColumn().name());
            values.append("?");

            params.add(col.getFieldValue(entity));
        }

        String insert = statement.append(")").append(values.append(")").toString()).toString();
        KeyHolder keyHolder = new GeneratedKeyHolder();
        getJdbcTemplate().update(new EntityPreparedStatementCreator(insert, params.toArray()), keyHolder);
        for (FieldColumn fc : columns) {
            if (fc.getColumn().serial()) {
                Object keyGen = keyHolder.getKeys().get(fc.getColumn().name());
                switch(fc.getColumn().type()) {
                    case DEFAULT: fc.setFieldValue(entity, keyGen); break;
                    case DATE: fc.setFieldValue(entity, keyGen); break;
                    case BOOLEAN: fc.setFieldValue(entity, keyGen); break;
                    case ENUM_ORDINAL: fc.setFieldValue(entity, keyGen); break;
                    case ENUM_STRING: fc.setFieldValue(entity, keyGen); break;
                    case INTEGER: fc.setFieldValue(entity, new Integer(keyGen.toString())); break;
                    case LONG: fc.setFieldValue(entity,new Long(keyGen.toString())); break;
                    case DOUBLE: fc.setFieldValue(entity, new Double(keyGen.toString())); break;
                    case BIGDECIMAL: fc.setFieldValue(entity, keyGen); break;
                    case TIMESTAMP: fc.setFieldValue(entity, keyGen); break;
                    case TIME: fc.setFieldValue(entity, keyGen); break;
                    default: break;
                }
            }
        }
        return entity;
    }

    @Override
    public T update(T entity) throws Exception {
        StringBuilder statement = new StringBuilder();
        StringBuilder where = new StringBuilder();
        statement.append("UPDATE ").append(table.value()).append(" SET ");
        where.append(" WHERE ");

        List<FieldColumn> ids = new ArrayList<FieldColumn>();
        List<Object> params = new ArrayList<Object>();
        for (FieldColumn fc : columns) {
            if (fc.getColumn().id()) {
                ids.add(fc);
                continue;
            }
            
            if (fc.getColumn().serial()) {
                continue;
            }

            if (!params.isEmpty()) {
                statement.append(", ");
            }
            statement.append(fc.getColumn().name()).append("=? ");
            params.add(fc.getFieldValue(entity));
        }

        for (int i = 0; i < ids.size(); i++) {
            FieldColumn fc = ids.get(i);
            if (i != 0) {
                where.append(" AND ");
            }
            where.append(fc.getColumn().name()).append("=? ");
            params.add(fc.getFieldValue(entity));
        }
        statement.append(where.toString());
        System.out.println(statement);
        getJdbcTemplate().update(new EntityPreparedStatementCreator(statement.toString(), params.toArray()));
        return entity;
    }

    @Override
    public T delete(T entity) throws Exception {
        StringBuilder sb = new StringBuilder();
        sb.append("DELETE FROM ").append(table.value()).append(" WHERE ");
        List<Object> params = new ArrayList<Object>();
        for (int i = 0; i < columns.size(); i++) {
            FieldColumn fc = columns.get(i);
            if (!fc.getColumn().id()) {
                continue;
            }

            if (!params.isEmpty()) {
                sb.append(" AND ");
            }

            sb.append(fc.getColumn().name()).append("=? ");
            params.add(fc.getFieldValue(entity));
        }
        getJdbcTemplate().update(new EntityPreparedStatementCreator(sb.toString(), params.toArray()));
        return entity;
    }

    @Override
    public List<T> list(String condition, Object[] args) throws Exception{
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM ").append(table.value());
        if (condition != null && condition.trim().length() > 0) {
            sb.append(" WHERE ").append(condition);
        }
        return query(sb.toString(), args);
    }

}
