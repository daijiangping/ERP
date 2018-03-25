package com.nuoplus.system.model;

public class KechouLeibie {

    private Long kechouId;


    private String kechouName;


    private String kechouDescribing;


    private Integer kechouType;


    public Long getKechouId() {
        return kechouId;
    }


    public void setKechouId(Long kechouId) {
        this.kechouId = kechouId;
    }


    public String getKechouName() {
        return kechouName;
    }


    public void setKechouName(String kechouName) {
        this.kechouName = kechouName == null ? null : kechouName.trim();
    }


    public String getKechouDescribing() {
        return kechouDescribing;
    }


    public void setKechouDescribing(String kechouDescribing) {
        this.kechouDescribing = kechouDescribing == null ? null : kechouDescribing.trim();
    }


    public Integer getKechouType() {
        return kechouType;
    }


    public void setKechouType(Integer kechouType) {
        this.kechouType = kechouType;
    }
}