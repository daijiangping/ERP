package com.nuoplus.system.service.secClassRoom;


import com.nuoplus.system.service.BaseServiceImpl;
import com.nuoplus.system.service.snaker.TaskServiceImpl;
import com.nuoplus.system.utils.StringUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("classRoomService")
public class ClassRoomServiceImpl extends BaseServiceImpl{
    @Resource
    TaskServiceImpl iTaskService;
    /**
     * 获取第二课堂模块下拉
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getZdMkForList(String version) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
            params.put("version",version);
        return getBaseDao().queryForList("getZdMkForList",params);
    }

    /**
     * 获取第二课堂模块名称
     * @return
     * @throws Exception
     */
    public String getZdMkName(String mkId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("mkId",mkId);
        return getBaseDao().queryForObject("getZdMkName",params,String.class);
    }

    /**
     * 获取第二课堂项目名称
     * @return
     * @throws Exception
     */
    public String getZdXmName(String xmId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xmId",xmId);
        return getBaseDao().queryForObject("getZdXmName",params,String.class);
    }

    /**
     * 获取第二课堂级别名称
     * @return
     * @throws Exception
     */
    public String getZdJbName(String jbId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("jbId",jbId);
        return getBaseDao().queryForObject("getZdJbName",params,String.class);
    }

    /**
     * 获取第二课堂项目下拉
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getZdXmForList(String mkId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("mkId",mkId);
        return getBaseDao().queryForList("getZdXmForList",params);
    }


    /**
     * 获取第二课堂级别下拉
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getZdJbForList(String xmId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xmId",xmId);
        return getBaseDao().queryForList("getZdJbForList",params);
    }


    /**
     * 获取第二课堂要求以及分数下拉
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getZdYqForList(String jbId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("jbId",jbId);
        return getBaseDao().queryForList("getZdYqForList",params);
    }

    /**
     * 获取第二课堂申请表
     * @return
     * @throws Exception
     */
    public Map<String,Object> getNewApply(String orderId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("orderId",orderId);
        return getBaseDao().queryForObject("getNewApply",params,Map.class);
    }


    /**
     * 获取第二课堂学分认定维护列表
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getXfglList(String version,Integer start,Integer limit) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("version",version);
        params.put("start",start);
        params.put("limit",limit);
        return getBaseDao().queryForList("getXfglList",params);
    }

    /**
     * 获取第二课堂学分认定维护列表
     * @return
     * @throws Exception
     */
    public Integer getXfglListCount(String version) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("version",version);
        return getBaseDao().queryForObject("getXfglListCount",params,Integer.class);
    }






    /**
     * 新增第二课堂流程申请表
     * 调用通用的框架执行方法,先启动流程获取数据，再入表
     * @return
     * @throws Exception
     */
    public void startProcess(String userName,String operator,String processId,String orderId,String taskId, String mkName,
                             String xmName,String jbName,String startXf, String clUrl, String description,
                             String bossOperator,String endOperator,String version) throws Exception{

        Map<String, Object> params = new HashMap<String, Object>();
        params.put("mkName",mkName);
        params.put("xmName",xmName);
        params.put("jbName",jbName);
        params.put("startXf",startXf);
        params.put("endXf","");
        params.put("clUrl",clUrl);
        params.put("description",description);
        params.put("operator",operator);
        params.put("bossOperator","njTeacher,admin");
        params.put("endOperator",endOperator);
        params.put("version",version);

        if(StringUtils.isEmpty(orderId) && StringUtils.isEmpty(taskId)){
            //开始发起流程
           getFacets().startAndExecute(processId, userName, params);
           Map<String,Object> map = iTaskService.getOrdIdAndTaskId(operator,processId);
           params.put("orderId",map.get("orderId").toString());
           params.put("taskId",map.get("taskId").toString());
            //添加第二课堂学分申请表数据
            saveClassRoom(params);
        }else{
            getFacets().execute(taskId, userName, params);
            //修改第二课堂学分申请表数据
            updateClassRoom(orderId,mkName,xmName,jbName,
                    startXf,"",clUrl,description);
        }

    }


    /**
     * 新增第二课堂流程申请表
     *
     *
     * @return
     * @throws Exception
     */
    public void endProcess(String userName, String orderId,String taskId,String result,String endXf,String suggest) throws Exception{
        //如果同意，则流程结束，可修改数据
        if ("agree".equals(result)){
            //修改第二课堂学分申请表数据
            updateClassRoom(orderId,"","","","",endXf,
                    "","");
        }
        //调用通用的框架执行方法
        Map<String,Object> params = new HashMap<String, Object>();
        params.put("userName",userName);
        params.put("orderId",orderId);
        params.put("taskId",taskId);
        params.put("result",result);
        params.put("endXf",endXf);
        params.put("suggest",suggest);
        getFacets().execute(taskId, userName, params);
    }

    /**
     * 新增第二课堂流程申请表
     * @return
     * @throws Exception
     */
    public void saveClassRoom(Map<String,Object> params) throws Exception{
        getBaseDao().insert("saveClassRoom",params);
    }


    /**
     * 修改第二课堂流程申请表
     * @return
     * @throws Exception
     */
    public void updateClassRoom(String orderId,String mkName,String xmName,String jbName,
                             String startXf,String endXf, String clUrl,String description) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();

        params.put("orderId",orderId);
        params.put("mkId",mkName);
        params.put("xmId", xmName);
        params.put("jbId",jbName);
        params.put("startXf",startXf);
        params.put("endXf",endXf);
        params.put("clUrl",clUrl);
        params.put("description",description);
        getBaseDao().update("updateEndClassRoom",params);
    }

    /**
     * 删除第二课堂流程申请表
     * @return
     * @throws Exception
     */
    public void bathDel(String[] checkbox) throws Exception{
        for (String orderId : checkbox){
            Map<String, Object> params = new HashMap<String, Object>();
            params.put("orderId",orderId);
            //删除流程相关信息
            delTask(params);
            getBaseDao().delete("deleteClassRoom",params);
        }
    }

/**
 * 第二课堂认定表维护start
 */
    /**
     * 新增模块
     * @return
     * @throws Exception
     */
    public void saveMk(String mkName,String version) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("mkName",mkName);
        params.put("version",version);
        //添加模块
        getBaseDao().insert("saveMk",params);
        //获取新添加模块id,按添加时间倒序，获取第一个
        String mkId = getBaseDao().queryForObject("getMkIdByName",params,String.class);
        params.put("mkId",mkId);
        //添加模块与版本对应关系
        getBaseDao().insert("saveMkVersion",params);
    }


    /**
     * 新增项目
     * @return
     * @throws Exception
     */
    public String saveXm(String xmName,String mkId,String xmType) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xmName",xmName);
        params.put("mkId",mkId);
        params.put("xmType",xmType);
        getBaseDao().insert("saveXm",params);
        return getBaseDao().queryForObject("getXmId",params,String.class);
    }

    /**
     * 新增级别
     * @return
     * @throws Exception
     */
    public String saveJb(String jbName,String xmId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("jbName",jbName);
        params.put("xmId",xmId);
        getBaseDao().insert("saveJb",params);
        return getBaseDao().queryForObject("getJbId",params,String.class);
    }

    /**
     * 新增要求以及学分
     * @return
     * @throws Exception
     */
    public void saveYqXf(String yqName,String yqXf,String jbId,String mkId,String xmId,String xmName,String xmType,String jbName) throws Exception{
        if(StringUtil.isEmpty(xmId)){
            xmId = saveXm(xmName,mkId, xmType);
            jbId = saveJb(jbName,xmId);
        }
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("yqName",yqName);
        params.put("yqXf",yqXf);
        params.put("jbId",jbId);
        getBaseDao().insert("saveYqXf",params);
    }

    /**
     * 新增版本号
     * @return
     * @throws Exception
     */
    public void saveVersion(String version,String[] mkIds) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("version",version);
        getBaseDao().insert("saveVersion",params);
        for (String mkId : mkIds){
            params.put("mkId",mkId);
            getBaseDao().insert("saveMkVersion",params);
        }
    }

    /**
     * 修改模块
     * @return
     * @throws Exception
     */
    public void updateMk(String mkName,String mkId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("mkName",mkName);
        params.put("mkId",mkId);
        //添加模块
        getBaseDao().update("updateMk",params);
    }


    /**
     * 新增项目
     * @return
     * @throws Exception
     */
    public void updateXm(String xmName,String mkId,String xmId,String xmType) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xmName",xmName);
        params.put("mkId",mkId);
        params.put("xmType",xmType);
        params.put("xmId",xmId);
        getBaseDao().update("updateXm",params);
    }

    /**
     * 修改级别
     * @return
     * @throws Exception
     */
    public void updateJb(String jbName,String xmId,String jbId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("jbName",jbName);
        params.put("xmId",xmId);
        params.put("jbId",jbId);
        getBaseDao().update("updateJb",params);
    }

    /**
     * 修改要求以及学分
     * @return
     * @throws Exception
     */
    public void updateYqXf(String yqName,String yqXf,String jbId,String yqId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("yqName",yqName);
        params.put("yqXf",yqXf);
        params.put("jbId",jbId);
        params.put("yqId",yqId);
        getBaseDao().update("updateYqXf",params);
    }



    /**
     * 获取第二课堂版本下拉
     * @return
     * @throws Exception
     */
    public List<Map<String,Object>> getVersionSelect() throws Exception{
        return getBaseDao().queryForList("getVersionSelect",null);
    }

    /**
     * 第二课堂认定表维护end
     */






}
