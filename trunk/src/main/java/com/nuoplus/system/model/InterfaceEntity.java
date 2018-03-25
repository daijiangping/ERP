package com.nuoplus.system.model;

import java.sql.Timestamp;

/**
 * 接口配置实体
 */
public class InterfaceEntity extends Entity {
    private static final long serialVersionUID = 3642244999088136723L;
    //接口ID
    private Long intfId;
    //接口名称
    private String intfNm;
    //接口类名称
    private String intfClaNm;
    //接口路径
    private String intfPath;
    //RESTFUL请求方法名称
    private String rstflReqstMthdNm;
    //接口状态
    private String sysStsCD;
    //创建时间
    private Timestamp crtTime;

    @Override
    public String toString() {
        return "InterfaceEntity{" + "intfId='" + intfId + '\'' + ", intfNm='" + intfNm + '\'' + ", intfClaNm='" + intfClaNm + '\'' + ", intfPath='" + intfPath + '\'' + ", rstflReqstMthdNm='" + rstflReqstMthdNm + '\'' + ", sysStsCD='" + sysStsCD + '\'' + ", crtTime=" + crtTime + '}';
    }

    public String getSysStsCD() {
        return sysStsCD;
    }

    public void setSysStsCD(String sysStsCD) {
        this.sysStsCD = sysStsCD;
    }

    public Long getIntfId() {
        return intfId;
    }

    public void setIntfId(Long intfId) {
        this.intfId = intfId;
    }

    public String getIntfNm() {
        return intfNm;
    }

    public void setIntfNm(String intfNm) {
        this.intfNm = intfNm;
    }

    public String getIntfClaNm() {
        return intfClaNm;
    }

    public void setIntfClaNm(String intfClaNm) {
        this.intfClaNm = intfClaNm;
    }

    public String getIntfPath() {
        return intfPath;
    }

    public void setIntfPath(String intfPath) {
        this.intfPath = intfPath;
    }

    public String getRstflReqstMthdNm() {
        return rstflReqstMthdNm;
    }

    public void setRstflReqstMthdNm(String rstflReqstMthdNm) {
        this.rstflReqstMthdNm = rstflReqstMthdNm;
    }



    public Timestamp getCrtTime() {
        return crtTime;
    }

    public void setCrtTime(Timestamp crtTime) {
        this.crtTime = crtTime;
    }
}
