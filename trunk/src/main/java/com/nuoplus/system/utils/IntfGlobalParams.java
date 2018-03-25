package com.nuoplus.system.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * 接口全局变量
 *
 * @author zhangxw
 */
public class IntfGlobalParams {
    private static ThreadLocal<Map<String, Object>> globalParams = new ThreadLocal<Map<String, Object>>();

    private IntfGlobalParams() {

    }

    public static Map<String, Object> getThreadInstance() {
        if (globalParams.get() == null) {
            globalParams.set(new HashMap<String, Object>());
        }
        return globalParams.get();
    }

    public static void delete() {
        globalParams.remove();
    }
}
