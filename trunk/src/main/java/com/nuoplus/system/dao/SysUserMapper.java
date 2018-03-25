package com.nuoplus.system.dao;

import com.nuoplus.system.model.SysUser;

import java.util.List;
import java.util.Map;

public interface SysUserMapper {

    int deleteByPrimaryKey(Long id);


    int insert(SysUser record);


    int insertSelective(SysUser record)throws Exception;


    SysUser selectByPrimaryKey(Long id);


    SysUser findByUsername(String username);


    int updateByPrimaryKeySelective(SysUser record);


    int updateByPrimaryKey(SysUser record);

    List<SysUser> findAll(Map<String, Object> map);

    Integer countAll(Map<String, Object> map);

    int batchDel(String checkbox);

    List<Map<String,Object>> findAllJGXX();

    List<Map<String,Object>> finOrgInfo(String username);


    List<Map<String,Object>> finQyInfo(String username);

    List<Map<String,Object>> getVersion()throws Exception;
}