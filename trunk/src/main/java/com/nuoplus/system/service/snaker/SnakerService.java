package com.nuoplus.system.service.snaker;

/**
 * snaker流程重写、补充方法服务类
 * Created by zhangxw on 2017/4/25.
 */
public interface SnakerService {
    /**
     * snaker补充流程禁用后恢复可用
     * @param processId
     * @throws Exception
     */
    public void deploy(String processId) throws Exception;

}
