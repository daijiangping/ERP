package com.nuoplus.system.service;

import com.nuoplus.system.model.RolePermission;
import com.nuoplus.system.model.SysRole;
import com.nuoplus.system.utils.Pager;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by Administrator on 2017/5/3 0003.
 */
public interface RoleService {

    Set<String> findRoles(String roleIds);

    /**
     * 根据角色编号得到权限字符串列表
     * @param roleIds
     * @return
     */
  /*  Set<String> findPermissions(String roleIds);*/


    SysRole findOne(Long roleId);

    List<SysRole> findAll();


    List<SysRole> findRoleNames(String roleIds);

    int updateRole(SysRole role);

    int createRole(SysRole role)throws Exception;

    int deleteRole(Long id);

    List<Map<String, Object>> findRolesByUser(Long id);

    int saveUserRoles(Long id, Long[] roleIds) throws Exception;

    Integer countAll(String keyword);

    List<SysRole> findAllByPage(String keyword, Pager pager);

    List<Map<String, Object>> getPermission(Long roleId);


    int savePermission(Long roleId, String[] pers)throws Exception;

    List<RolePermission> checkInfo(Long roleId);

    int updateStatus(Long id, boolean status)throws Exception;

    int batchDel(String checkbox)throws Exception;

    List<Map<String,Object>> getViewPermission(Long roleId);
}
