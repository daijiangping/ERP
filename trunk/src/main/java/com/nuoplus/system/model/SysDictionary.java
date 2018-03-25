package com.nuoplus.system.model;

public class SysDictionary {

    private Long id; //字典ID


    private String title;  //字典主题


    private String type;   //字典类型


    private Long parentId;  //父节点id


    private String parentIds;   //父节点信息


    private String uid;       //字典唯一识别码


    private Boolean available=Boolean.FALSE;   //是否禁用


    public Long getId() {
        return id;
    }


    public void setId(Long id) {
        this.id = id;
    }


    public String getTitle() {
        return title;
    }


    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }


    public String getType() {
        return type;
    }


    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }


    public Long getParentId() {
        return parentId;
    }


    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }


    public String getParentIds() {
        return parentIds;
    }


    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
    }


    public String getUid() {
        return uid;
    }


    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }


    public Boolean getAvailable() {
        return available;
    }


    public void setAvailable(Boolean available) {
        this.available = available;
    }

    public boolean isRootNode() {
        return parentId == 0;
    }

    public String makeSelfAsParentIds() {
        return getParentIds() + getId() + "/";
    }

}