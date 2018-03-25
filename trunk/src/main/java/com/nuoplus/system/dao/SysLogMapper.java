package com.nuoplus.system.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/6/21 0021.
 */
public interface SysLogMapper {
    Integer countLogs(Map<String, Object> map) ;

    List<Map<String,Object>> findAllLogsByPage(Map<String, Object> map);
}
