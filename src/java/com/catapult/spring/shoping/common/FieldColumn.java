/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.catapult.spring.shoping.common;

import java.lang.reflect.Field;

/**
 * Composite object to bind a object field and its database table column
 *
 * @author Michael
 */
public class FieldColumn {

    private Column column;
    private Field field;

    public FieldColumn(Column column, Field field) {
        this.column = column;
        this.field = field;
    }

    /**
     * @return the column
     */
    public Column getColumn() {
        return column;
    }

    /**
     * @return the field
     */
    public Field getField() {
        return field;
    }

    public Object getFieldValue(Object source) {
        boolean accessible = this.field.isAccessible();
        Object val = null;
        try {
            this.field.setAccessible(true);

            if (!this.field.getType().isEnum()) {
                val = this.field.get(source);
            } else {
                val = this.field.get(source);
                Enum e = Enum.valueOf((Class) this.field.getType(), val.toString());
                if (column.type() == ColumnType.ENUM_STRING) {
                    return val.toString();
                }
                return (column.type() == ColumnType.ENUM_ORDINAL) ? e.ordinal() : e.name();
            }
        } catch (Exception e) {
            throw new IllegalStateException(e);
        } finally {
            this.field.setAccessible(accessible);
        }
        return val;
    }

    public void setFieldValue(Object source, Object value) {
        boolean accessible = this.field.isAccessible();
        try {

            if (value == null) {
                return;
            }
            this.field.setAccessible(true);
            if (!this.field.getType().isEnum()) {
                this.field.set(source, value);
                return;
            }

            Object[] constants = this.field.getType().getEnumConstants();
            if (column.type() == ColumnType.ENUM_STRING) {
                Enum e = Enum.valueOf((Class) field.getType(), value.toString());
                this.field.set(source, e);
            } else if (column.type() == ColumnType.ENUM_ORDINAL) {
                this.field.set(source, constants[Integer.parseInt(value.toString())]);
            }
        } catch (Exception e) {
            throw new IllegalStateException(e);
        } finally {
            this.field.setAccessible(accessible);
        }
    }
}
