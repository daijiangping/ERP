package com.nuoplus.system.model;

import java.util.Map;

/**
 * 接口入参对象
 * @author zhangxw
 */
public class InputObject {
    public Map<String,String> params;

    public Map<String, String> getParams() {
        return params;
    }

    public void setParams(Map<String, String> params) {
        this.params = params;
    }

    @Override
    public String toString() {
        return "InputObject{" +
                "params=" + params +
                '}';
    }
}
