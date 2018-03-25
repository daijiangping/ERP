package com.nuoplus.system.service.snaker;


import com.nuoplus.system.service.BaseServiceImpl;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("iTaskService")
public class TaskServiceImpl extends BaseServiceImpl {
    /**
     * 获取单条流程历史记录
     * @param orderId
     * @param parentTaskId
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getHisTaskForList(String orderId,String parentTaskId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("orderId",orderId);
        params.put("parentTaskId",parentTaskId);
        return getBaseDao().queryForList("getHisTaskForList",params);
    }


    /**
     * 获取当前用户待办事项
     * @param creator
     * @param actorId
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getHomeTaskList(String creator,String actorId,String processName,Integer start,Integer limit) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("creator",creator);
        params.put("actorId",actorId);
        params.put("processName",processName);
        params.put("start",start);
        params.put("limit",limit);
        return getBaseDao().queryForList("getHomeTaskList",params);
    }
    /**
     * 获取当前用户待办事项
     * @param creator
     * @param actorId
     * @return
     * @throws Exception
     */
    public Integer getHomeTaskListCount(String creator,String actorId,String processName) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("creator",creator);
        params.put("actorId",actorId);
        params.put("processName",processName);
       return getBaseDao().queryForObject("getHomeTaskListCount",params,Integer.class);
    }

    /**
     * 获取已完结流程信息
     * @param creator
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getEndOrderList(String creator,String processName,Integer start,Integer limit) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("creator",creator);
        params.put("processName",processName);
        params.put("start",start);
        params.put("limit",limit);
        return getBaseDao().queryForList("getEndOrderList",params);
    }

    /**
     * 获取已完结流程信息count
     * @param creator
     * @return
     * @throws Exception
     */
    public Integer getEndOrderListCount(String creator,String processName) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("creator",creator);
        params.put("processName",processName);
        return getBaseDao().queryForObject("getEndOrderListCount",params,Integer.class);
    }

    /**
     * 获取当前用户最新orderId以及taskId，笨方法前提为单点登录，不支持单用户并发
     * @return
     * @throws Exception
     */
    public Map<String,Object> getOrdIdAndTaskId(String creator,String processId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("creator",creator);
        params.put("processId",processId);
        return getBaseDao().queryForObject("getOrdIdAndTaskId",params,Map.class);
    }


}
