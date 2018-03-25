package com.nuoplus.system.model;

import com.nuoplus.system.utils.DateUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * 接口出参对象
 * @author zhangxw
 */
public class OutputObject {
    public Map<String,Object> object;
    public String resultCode;
    public String resultMsg;
    public String sn;

    @Override
    public String toString() {
        return "OutputObject{" + "object=" + DateUtils.ConvertUtils.objectToJson(object) + ", resultCode='" + resultCode + '\'' + ", resultMsg='" + resultMsg + '\'' + ", sn='" + sn + '\'' + '}';
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public Map<String, Object> getObject() {
        if(object == null){
            object = new HashMap<String,Object>();
        }
        return object;
    }

    public void setObject(Map<String, Object> object) {
        this.object = object;

    }

    public String getResultCode() {
        return resultCode;
    }

    public void setResultCode(String resultCode) {
        this.resultCode = resultCode;
    }

    public String getResultMsg() {
        return resultMsg;
    }

    public void setResultMsg(String resultMsg) {
        this.resultMsg = resultMsg;
    }
}
