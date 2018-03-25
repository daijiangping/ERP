package com.nuoplus.system.service;

import com.nuoplus.system.utils.Pager;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/6/21 0021.
 */
public interface SysLogsService {

    Integer countLogs(String starTime, String endTime, String keyword);

    List<Map<String,Object>> findAllLogsByPage(String starTime, String endTime, String keyword, Pager pager);

}
