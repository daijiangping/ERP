package com.nuoplus.system.model;

import org.apache.log4j.Logger;

import java.io.*;

/**
 * Java基类
 * @author zhangxw
 */
public class Entity implements Serializable {
    private static final long serialVersionUID = -9131680166367906057L;
    private static final Logger logger = Logger.getLogger(Entity.class);

    /**
     * 深度克隆
     *
     * @return 克隆的类
     */
    @SuppressWarnings("unchecked")
    public <T> T deepClone() {
        try {
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            ObjectOutputStream oo = new ObjectOutputStream(bo);
            oo.writeObject(this);
            ByteArrayInputStream bi = new ByteArrayInputStream(bo.toByteArray());
            ObjectInputStream oi = new ObjectInputStream(bi);
            // Return Target Object
            return (T) oi.readObject();
        } catch (Exception e) {
            logger.error("deepClone"+ e);
            return null;
        }
    }
}
