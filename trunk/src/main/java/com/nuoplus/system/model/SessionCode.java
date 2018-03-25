package com.nuoplus.system.model;

import java.io.Serializable;
import java.util.Date;

public class SessionCode implements Serializable {
    private String code;
    private Date expired;

    public SessionCode() {
    }

    public SessionCode(String code, Date expired) {
        this.code = code;
        this.expired = expired;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Date getExpired() {
        return this.expired;
    }

    public void setExpired(Date expired) {
        this.expired = expired;
    }
}