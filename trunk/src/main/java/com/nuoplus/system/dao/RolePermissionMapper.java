package com.nuoplus.system.dao;

import com.nuoplus.system.model.RolePermission;

import java.util.List;
import java.util.Set;

public interface RolePermissionMapper {

    int insert(RolePermission record);


    int insertSelective(RolePermission record);

    int savePermission(List<RolePermission> permissions);

    int deleteByRoleId(Long roleId);

    List<RolePermission> findByRoleId(Long roleId);

    int batchDel(String roleIds);

    Set<String> findPermissionByUserName(String username);
}