package com.nuoplus.system.model;

public class SysUserOrganization {

    private Long userId;


    private Long orgId;

    public SysUserOrganization(Long userId, Long orgId){
           this.userId=userId;
            this.orgId=orgId;
    }

    public Long getUserId() {
        return userId;
    }


    public void setUserId(Long userId) {
        this.userId = userId;
    }


    public Long getResourceId() {
        return orgId;
    }


    public void setResourceId(Long resourceId) {
        this.orgId = resourceId;
    }
}