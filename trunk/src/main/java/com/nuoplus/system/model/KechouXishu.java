package com.nuoplus.system.model;

public class KechouXishu {

    private Long xishuId;


    private Long liebieId;


    private String teacherType;


    private Long orgId;


    private Double value;


    public Long getXishuId() {
        return xishuId;
    }


    public void setXishuId(Long xishuId) {
        this.xishuId = xishuId;
    }


    public Long getLiebieId() {
        return liebieId;
    }


    public void setLiebieId(Long liebieId) {
        this.liebieId = liebieId;
    }


    public String getTeacherType() {
        return teacherType;
    }


    public void setTeacherType(String teacherType) {
        this.teacherType = teacherType == null ? null : teacherType.trim();
    }


    public Long getOrgId() {
        return orgId;
    }


    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }


    public Double getValue() {
        return value;
    }


    public void setValue(Double value) {
        this.value = value;
    }
}