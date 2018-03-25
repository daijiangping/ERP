package com.nuoplus.system.model;
public class PushNodes {
    private Long id;
    private String pushNode;
    private String status;
    public PushNodes() {
        super();
    }
    public PushNodes(Long id,String pushNode,String status) {
        super();
        this.id = id;
        this.pushNode = pushNode;
        this.status = status;
    }
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPushNode() {
        return this.pushNode;
    }

    public void setPushNode(String pushNode) {
        this.pushNode = pushNode;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
