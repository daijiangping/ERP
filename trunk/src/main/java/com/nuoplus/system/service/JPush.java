package com.nuoplus.system.service;

import cn.jiguang.common.ClientConfig;
import cn.jiguang.common.resp.APIConnectionException;
import cn.jiguang.common.resp.APIRequestException;
import cn.jpush.api.JPushClient;
import cn.jpush.api.push.PushResult;
import cn.jpush.api.push.model.Message;
import cn.jpush.api.push.model.Options;
import cn.jpush.api.push.model.Platform;
import cn.jpush.api.push.model.PushPayload;
import cn.jpush.api.push.model.audience.Audience;
import cn.jpush.api.push.model.notification.IosNotification;
import cn.jpush.api.push.model.notification.Notification;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * Created by WangYuPeng on 2017/6/16 0016.
 */
public class JPush {
    protected static final Logger LOG = LoggerFactory.getLogger(JPush.class);

    public static final String REGISTRATION_ID = "";
    public static final String TAG = "tag_api";

    public static void main(String[] args) {
    // SendStudentPush("iso测试","个人推送","alias","14520201157948");
       // SendAndroidPush("平台派送订单","平台派送一条订单，请前往接单","alias","18729184285");
        SendIosPush( "平台派送订单","平台派送一条订单，请前往接单", "alias","15191465354");
    }

    /**
     *
     * @param title  推送标题
     * @param msg_content    推送内容
     * @param type    推送方式 tag：用户分组推送、alias：针对单个用户推送（参数为空是为全部推送）
     * @param par  用户账号
     */
    public static void SendAndroidPush(String title,String msg_content,String type,String par) {
        final  String appKey ="bd013932465930b41a76171e";
        final String masterSecret = "289c1dd3f5b7a5e514f580a5";
        JPushClient jpushClient = new JPushClient(masterSecret, appKey, null,  ClientConfig.getInstance());

        PushPayload payload =null;
        if (type.trim().equals("tag")){
             payload= buildPushObject_android_tag_alertWithTitle(title,msg_content,par);
            LOG.info("tag推送");
        }else if (type.trim().equals("alias")){
            if(!par.trim().equals("")&&par.contains(",")){
                String[] arr = par.split(",");
                for (int i = 0; i <arr .length ; i++) {
                    payload = buildPushObject_all_alias_alert(msg_content,arr[i]);
                }
            }else {
                payload = buildPushObject_all_alias_alert(msg_content,par);
            }
            LOG.info("alias推送");
        }else {
             payload = buildPush_android_alert(title,msg_content);
            LOG.info("全部推送");
        }


        try {
            PushResult result = jpushClient.sendPush(payload);
            LOG.info("Got result - " + result);
            LOG.info("教师端消息推送成功");
        } catch (APIConnectionException e) {
            // Connection error, should retry later
            LOG.error("Connection error, should retry later", e);
            LOG.info("教师端消息推送失败");
        } catch (APIRequestException e) {
            // Should review the error, and fix the request
            LOG.error("Should review the error, and fix the request", e);
            LOG.info("HTTP Status: " + e.getStatus());
            LOG.info("Error Code: " + e.getErrorCode());
            LOG.info("Error Message: " + e.getErrorMessage());
            LOG.info("教师端消息推送失败");
        }
    }

    /**
     *
     * @param title  推送标题
     * @param msg_content    推送内容
     * @param type    推送方式 tag：用户分组推送、alias：针对单个用户推送（参数为空是为全部推送）
     * @param par  用户账号
     */
    public static void SendIosPush(String title,String msg_content,String type,String par) {
        final  String appKey ="eae832fc9604a24d87958c6b";
        final String masterSecret = "2657561aefaee2cb920baa11";
        JPushClient jpushClient = new JPushClient(masterSecret, appKey, null,  ClientConfig.getInstance());

        PushPayload payload =null;
        if (type.trim().equals("tag")){
            payload= buildPushObject_iso_tag_alertWithTitle(title,msg_content,par);
            LOG.info("tag推送");
        }else if (type.trim().equals("alias")){
            payload = buildPushObject_all_alias_alert(msg_content,par);
            LOG.info("alias推送");
        }else {
            payload = buildPushObject_all_all_alert(msg_content);
            LOG.info("全部推送");
        }
        try {
            PushResult result = jpushClient.sendPush(payload);
            LOG.info("Got result - " + result);
            LOG.info("学生端消息推送成功");

        } catch (APIConnectionException e) {
            // Connection error, should retry later
            LOG.error("Connection error, should retry later", e);

        } catch (APIRequestException e) {
            // Should review the error, and fix the request
            LOG.error("Should review the error, and fix the request", e);
            LOG.info("HTTP Status: " + e.getStatus());
            LOG.info("Error Code: " + e.getErrorCode());
            LOG.info("Error Message: " + e.getErrorMessage());
        }
    }
    //所有平台，所有设备内容为 ALERT 的通知
    public static PushPayload buildPushObject_all_all_alert(String msg_content) {
        return PushPayload.alertAll(msg_content);
    }
    //android平台，所有设备,标题为Titile,内容为 ALERT 的通知
    public static PushPayload buildPush_android_alert(String title,String msg_content) {
        return PushPayload.newBuilder()
                .setPlatform(Platform.android())
                .setAudience(Audience.all())
                .setNotification(Notification.android(msg_content, title, null))
                .build();
    }
    //平台是 Android，目标是 tag 为 "tag1" 的设备，内容是 Android 通知 ALERT，并且标题为 TITLE。
    public static PushPayload buildPushObject_android_tag_alertWithTitle(String title,String msg_content,String tag) {
        return PushPayload.newBuilder()
                .setPlatform(Platform.android())
                .setAudience(Audience.tag(tag))
                .setNotification(Notification.android(msg_content, title, null))
                .build();
    }
    public static PushPayload buildPushObject_iso_tag_alertWithTitle(String title,String msg_content,String tag) {
        return PushPayload.newBuilder()
                .setPlatform(Platform.ios())
                .setAudience(Audience.tag_and(tag, "tag_all"))
                .setNotification(Notification.newBuilder()
                        .addPlatformNotification(IosNotification.newBuilder()
                                .setAlert(msg_content)
                                .setBadge(5)
                                .setSound("happy")
                                .addExtra("from", "JPush")
                                .build())
                        .build())
                .setMessage(Message.content(msg_content))
                .setOptions(Options.newBuilder()
                        .setApnsProduction(true)
                        .build())
                .build();
    }
   //所有平台，推送目标是别名为 "alias";
    public static PushPayload buildPushObject_all_alias_alert(String msg_content,String alias) {
        return PushPayload.newBuilder()
                .setPlatform(Platform.all())
                .setAudience(Audience.alias(alias))
                .setNotification(Notification.alert(msg_content))
                .build();
    }

}
