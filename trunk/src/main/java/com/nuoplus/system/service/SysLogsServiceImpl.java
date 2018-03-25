package com.nuoplus.system.service;

import com.nuoplus.system.dao.SysLogMapper;
import com.nuoplus.system.utils.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/6/21 0021.
 */
@Service
public class SysLogsServiceImpl implements SysLogsService{

    @Resource
    SysLogMapper sysLogMapper;

    public Integer countLogs(String starTime, String endTime, String keyword) {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("starTime",starTime);
        map.put("endTime",endTime);
        map.put("keyword",keyword);
       return sysLogMapper.countLogs(map);
    }

    public List<Map<String, Object>> findAllLogsByPage(String starTime, String endTime, String keyword, Pager pager) {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("starTime",starTime);
        map.put("endTime",endTime);
        map.put("startRecords",pager.getStartRecords());
        map.put("pageSize",pager.getPageSize());
        map.put("keyword",keyword);
        return sysLogMapper.findAllLogsByPage(map);
    }
}
