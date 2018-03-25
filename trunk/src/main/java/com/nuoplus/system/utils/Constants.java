package com.nuoplus.system.utils;

/**
 * 静态配置对象
 *
 * @author zhangxw
 */
public final class Constants {
    /**
     * 流程名称
     */
    public interface FLOW_STATE_CODE{
        //第二课堂学分
        String secClassRoom ="第二课堂";
        //请假
        String LEAVE = "请假";
        String DAY_LEAVE="请假流程（白天）";
        String NIGHT_LEAVE="请假流程（晚上）";
    }

    /**
     * 业务成功、失败状态码
     */
    public interface BUSI_STATE_CODE{
        //成功
        String SUCESS="0";
        //失败
        String ERROR="-9999";
    }

    /**
     * 接口成功、失败状态码
     */
    public interface INTERFACE_CODE{
        //成功
        String SUCESS_CODE="0000";
        //失败
        String ERROR_CODE="-9999";
        //成功
        String SUCESS_MSG="成功";
        //请求报文不合法
        String ERROR_REQ_MSG="请求报文不合法";
    }

    /**
     * 接口请求方式
     */
    public interface REQUEST_METHOD{
        //GET
        String GET = "GET";
        //POST
        String POST = "POST";
        //PUT
        String PUT = "PUT";
        //DELETE
        String DELETE ="DELETE";
    }

    public  static  final Long SMS_EXPIRED_LENGHT = 60*1000*60L;







}
