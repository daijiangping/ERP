package com.nuoplus.system.service.snaker;


import com.nuoplus.system.service.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service("iProcessService")
public class ProcessServiceImpl extends BaseServiceImpl implements SnakerService{
    /**
     * snaker补充流程禁用后恢复可用
     * @param processId
     * @throws Exception
     */
    public void deploy(String processId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("id",processId);
        getBaseDao().update("updateProcess",params);
    }

    /**
     * snaker获取当前模块最新流程
     * @param displayName
     * @throws Exception
     */
    public Map<String , Object> getNewProcess(String displayName) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("displayName",displayName);
        return getBaseDao().queryForObject("getNewProcess",params,Map.class);
    }


}
