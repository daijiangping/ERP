package com.nuoplus.system.utils;

import java.io.Serializable;
import java.util.Date;


public class SmsCode implements Serializable{

    /**
     * 随机代码
     */
    private String code;
    /**
     * 过期时间
     */
    private Date expired;

    public SmsCode() {
    }

    public SmsCode(String code, Date expired) {
        this.code = code;
        this.expired = expired;
    }


    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Date getExpired() {
        return expired;
    }

    public void setExpired(Date expired) {
        this.expired = expired;
    }
}
