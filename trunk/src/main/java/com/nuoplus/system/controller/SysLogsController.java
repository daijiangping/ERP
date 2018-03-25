package com.nuoplus.system.controller;

import com.nuoplus.system.service.SysLogsService;
import com.nuoplus.system.utils.Pager;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/6/21 0021.
 */
@Controller
@RequestMapping("/sysLogs")
public class SysLogsController{

    @Resource
    SysLogsService sysLogsService;

    @RequestMapping(value ="list",method = RequestMethod.GET)
    public String list() {
        return "logs/sysLogsList";
    }

    @RequiresPermissions("syslogs:check")
    @RequestMapping(value = "list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> findLogsList(String starTime,String endTime, Integer limit, Integer page, String keyword) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            Integer counts = sysLogsService.countLogs(starTime,endTime,keyword);
            Pager pager = new Pager(limit, page, counts);
            List< Map<String, Object>> list = sysLogsService.findAllLogsByPage(starTime,endTime,keyword,pager);
            result.put("data", list);
            result.put("count", counts);
            result.put("code", "0");
        } catch (Exception e) {
            e.printStackTrace();
            result.put("msg", "查询失败");
        }
        return result;
    }
}
