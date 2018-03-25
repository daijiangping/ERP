package com.nuoplus.system.utils;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by daijiangping on 2017/8/16.
 */
public class CommUtil {
    public static Page<Map<String, Object>> findPage(Long total, List<Map<String, Object>> maps, Pageable pageable) throws Exception {

     /*   StringBuffer queryBuffer = new StringBuffer(querySql);
        queryBuffer.append(" LIMIT ");
        queryBuffer.append(pageable.getOffset());
        queryBuffer.append(",");
        queryBuffer.append(pageable.getPageSize());*/
        // List<Map<String, Object>> maps = null;// jdbcTemplate.queryForList(queryBuffer.toString());
        Page<Map<String, Object>> page = new PageImpl<Map<String, Object>>(maps, pageable, total);
        return page;
    }
    public static boolean isNumeric(String str){
        Pattern pattern = Pattern.compile("[0-9]*");
        Matcher isNum = pattern.matcher(str);
        if( !isNum.matches() ){
            return false;
        }
        return true;
    }
}
