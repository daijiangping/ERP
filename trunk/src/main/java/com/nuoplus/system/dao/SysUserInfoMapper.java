package com.nuoplus.system.dao;

import com.nuoplus.system.model.SysUserInfo;

import java.util.List;
import java.util.Map;

public interface SysUserInfoMapper {

    int deleteByPrimaryKey(Long id);


    int insert(SysUserInfo record);


    int insertSelective(SysUserInfo record);


    SysUserInfo selectByPrimaryKey(Long id);


    int updateByPrimaryKeySelective(SysUserInfo record);


    int updateByPrimaryKey(SysUserInfo record);

    int countBySerach(Map<String, Object> map) ;

    List<Map<String,Object>> findBySerachByPage(Map<String, Object> map);
}