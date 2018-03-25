package com.nuoplus.system.service;


import com.nuoplus.system.dao.BaseDaoImpl;
import com.nuoplus.system.model.SysUser;
import com.nuoplus.system.service.secClassRoom.ClassRoomServiceImpl;
import com.nuoplus.system.service.snaker.ProcessServiceImpl;
import com.nuoplus.system.service.snaker.TaskServiceImpl;
import com.nuoplus.system.snaker.engine.SnakerEngineFacets;
import com.nuoplus.system.utils.DateUtils;
import com.nuoplus.system.utils.StringUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;


/**
 * 服务基类
 */
@Service("baseService")
public class BaseServiceImpl{
    public static final String PARA_PROCESSID = "processId";
    public static final String PARA_ORDERID = "orderId";
    public static final String PARA_TASKID = "taskId";
    public static final String PARA_TASKNAME = "taskName";
    public static final String PARA_METHOD = "method";
    public static final String PARA_NEXTOPERATOR = "nextOperator";
    public static final String PARA_NODENAME = "nodeName_";
    public static final String PARA_CCOPERATOR = "ccOperator";
    @Resource
    private SnakerEngineFacets facets;
    @Resource
    private BaseDaoImpl baseDao;
    @Resource
    private BeanFactory factory;

    // 接口服务
    @Resource
    private IntfaceServiceImpl intfaceServiceImpl;

    @Resource
    private TaskServiceImpl iTaskService;
    @Resource
    private ProcessServiceImpl iProcessService;
    @Resource
    private ClassRoomServiceImpl classRoomService;
    @Resource
    private UserServiceImpl userService;
    @Resource
    FileService fileService;

    public FileService getFileService() {
        return fileService;
    }

    public void setFileService(FileService fileService) {
        this.fileService = fileService;
    }


    public UserServiceImpl getUserService() {
        return userService;
    }

    public void setUserService(UserServiceImpl userService) {
        this.userService = userService;
    }

    public ClassRoomServiceImpl getClassRoomService() {
        return classRoomService;
    }

    public void setClassRoomService(ClassRoomServiceImpl classRoomService) {
        this.classRoomService = classRoomService;
    }

    public ProcessServiceImpl getiProcessService() {
        return iProcessService;
    }

    public void setiProcessService(ProcessServiceImpl iProcessService) {
        this.iProcessService = iProcessService;
    }

    public IntfaceServiceImpl getIntfaceServiceImpl() {
        return intfaceServiceImpl;
    }

    public void setIntfaceServiceImpl(IntfaceServiceImpl intfaceServiceImpl) {
        this.intfaceServiceImpl = intfaceServiceImpl;
    }

    public TaskServiceImpl getiTaskService() {
        return iTaskService;
    }

    public void setiTaskService(TaskServiceImpl iTaskService) {
        this.iTaskService = iTaskService;
    }

    public void setBeanFactory(BeanFactory factory) {
        this.factory = factory;
    }
    public BeanFactory getFactory() {
        return factory;
    }
    public BaseDaoImpl getBaseDao() {
        return baseDao;
    }
    public void setBaseDao(BaseDaoImpl baseDao) {
        this.baseDao = baseDao;
    }
    public SnakerEngineFacets getFacets() {
        return facets;
    }
    public void setFacets(SnakerEngineFacets facets) {
        this.facets = facets;
    }

    public int getMbYear() {
        return new Date().getYear()+1900;
    }



    public void saveSysLog(String user, String methodName, String methodDescription) throws Exception{
        String ip = getIP(getRequest());
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("user",user);
        map.put("methodName",methodName);
        map.put("methodDescription",methodDescription);
        map.put("requestIp",ip);
        getBaseDao().insert("saveSysLog",map);
    }


    /**
     * 得到request对象
     */
    public static HttpServletRequest getRequest() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        return request;
    }

    public void baseProcess(SysUser loginUser, HttpServletRequest request) throws Exception{
        String userName = loginUser.getUsername();
        Map<String, Object> params = new HashMap<String, Object>();
        Enumeration<String> paraNames = request.getParameterNames();
        while (paraNames.hasMoreElements()) {
            String element = paraNames.nextElement();
            int index = element.indexOf("_");
            String paraValue = request.getParameter(element);
            if(index == -1) {
                params.put(element, paraValue);
            } else {
                char type = element.charAt(0);
                String name = element.substring(index + 1);
                Object value = null;
                switch(type) {
                    case 'S':
                        value = paraValue;
                        break;
                    case 'I':
                        value = DateUtils.ConvertUtils.convertStringToObject(paraValue, Integer.class);
                        break;
                    case 'L':
                        value = DateUtils.ConvertUtils.convertStringToObject(paraValue, Long.class);
                        break;
                    case 'B':
                        value = DateUtils.ConvertUtils.convertStringToObject(paraValue, Boolean.class);
                        break;
                    case 'D':
                        value = DateUtils.ConvertUtils.convertStringToObject(paraValue, Date.class);
                        break;
                    case 'N':
                        value = DateUtils.ConvertUtils.convertStringToObject(paraValue, Double.class);
                        break;
                    default:
                        value = paraValue;
                        break;
                }
                params.put(name, value);
            }
        }
        String processId = request.getParameter(PARA_PROCESSID);
        String orderId = request.getParameter(PARA_ORDERID);
        String taskId = request.getParameter(PARA_TASKID);
        String nextOperator = request.getParameter(PARA_NEXTOPERATOR);
        if (StringUtils.isEmpty(orderId) && StringUtils.isEmpty(taskId)) {
            facets.startAndExecute(processId, userName, params);
        } else {
            String methodStr = request.getParameter(PARA_METHOD);
            int method;
            try {
                method = Integer.parseInt(methodStr);
            } catch(Exception e) {
                method = 0;
            }
            switch(method) {
                case 0://任务执行
                    facets.execute(taskId, userName, params);
                    break;
                case -1://驳回、任意跳转
                    facets.executeAndJump(taskId, userName, params, request.getParameter(PARA_NODENAME));
                    break;
                case 1://转办
                    if(StringUtils.isNotEmpty(nextOperator)) {
                        facets.transferMajor(taskId, userName, nextOperator.split(","));
                    }
                    break;
                case 2://协办
                    if(StringUtils.isNotEmpty(nextOperator)) {
                        facets.transferAidant(taskId, userName, nextOperator.split(","));
                    }
                    break;
                default:
                    facets.execute(taskId, userName, params);
                    break;
            }
        }
        String ccOperator = request.getParameter(PARA_CCOPERATOR);
        if(StringUtils.isNotEmpty(ccOperator)) {
            facets.getEngine().order().createCCOrder(orderId, userName, ccOperator.split(","));
        }
    }


    /**
     * 删除流程信息
     * @param params
     * @throws Exception
     */
    public void delTask(Map<String, Object> params) throws Exception{
        getBaseDao().delete("delHisTaskActor",params);
        getBaseDao().delete("delHisTask",params);
        getBaseDao().delete("delTaskOrder",params);
        getBaseDao().delete("delTaskActor",params);
        getBaseDao().delete("delTask",params);
        getBaseDao().delete("delOrder",params);
    }


    /**
     * 查询流程信息ByOrderId
     * @param orderId
     * @throws Exception
     */
    public Map<String,Object> getTaskByOrderId(String orderId) throws Exception{
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("orderId",orderId);
        return getBaseDao().queryForObject("getTaskByOrderId",params,Map.class);
    }


    /**
     * 批量审核
     * @return
     * @throws Exception
     */
    public void batchApprove(SysUser loginUser, String[] checkbox, String suggest, String result) throws Exception {
        for (String orderId : checkbox) {
            Map<String, Object> map = getTaskByOrderId(orderId);
            map.put("result", result);
            map.put("suggest", suggest);
            //调用框架执行方法
            getFacets().execute(map.get("taskId").toString(), loginUser.getUsername(), map);
        }

    }


    /**
     * 获取IP地址
     * @param request
     * @return String IP地址
     */
    public static String getIP(HttpServletRequest request) {
        String ip = "";
        ip = request.getHeader("Cdn-Src-Ip");
        System.out.println("Cdn-Src-Ip0:" + ip);
        if(StringUtil.isEmpty(ip) || ip.equalsIgnoreCase("unknown")){
            ip = request.getHeader("X-Forwared-For");
            System.out.println("X-Forwared-For:" + ip);
            if(StringUtil.isEmpty(ip)||ip.equalsIgnoreCase("unknown")){
                ip = request.getHeader("X-Real-IP");
                System.out.println("X-Real-IP:" + ip);
                if("unknown".equalsIgnoreCase(ip) || "null".equalsIgnoreCase(ip) || null == ip){
                    System.out.println("re:" + request.getRemoteAddr());
                    return  request.getRemoteAddr();
                }else{
                    return ip;
                }
            }else{
                return ip;
            }
        }else{
            return ip;
        }
    }
}
