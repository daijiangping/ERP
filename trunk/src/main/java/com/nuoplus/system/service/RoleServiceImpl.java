package com.nuoplus.system.service;

import com.nuoplus.system.dao.RolePermissionMapper;
import com.nuoplus.system.dao.SysRoleMapper;
import com.nuoplus.system.dao.SysUserRolesMapper;
import com.nuoplus.system.model.RolePermission;
import com.nuoplus.system.model.SysResource;
import com.nuoplus.system.model.SysRole;
import com.nuoplus.system.model.SysUserRoles;
import com.nuoplus.system.utils.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by Administrator on 2017/5/3 0003.
 */
@Service
public class RoleServiceImpl implements  RoleService {
    @Resource
    SysRoleMapper sysRoleMapper;
    @Resource
    ResourceService resourceService;
    @Resource
    SysUserRolesMapper sysUserRolesMapper;
    @Resource
    RolePermissionMapper rolePermissionMapper;

    public Set<String> findRoles(String roleIds) {
        String [] ids =roleIds.split(",");
        Set<String> roles = new HashSet<String>();
        for(String roleId : ids) {
            SysRole role = findOne(Long.parseLong(roleId));
            if(role != null) {
                roles.add(role.getRole());
            }
        }
        return roles;
    }

/*    public Set<String> findPermissions(String roleIds) {
          String [] ids =roleIds.split(",");
            Set<Long> resourceIds = new HashSet<Long>();
            for(String roleId : ids) {
                SysRole role = findOne(Long.parseLong(roleId));
                if(role != null) {
                    for (String resId:role.getResourceIds().split(",")
                         ) {
                        resourceIds.add(Long.parseLong(resId));
                    }
                }
            }
            return resourceService.findPermissions(resourceIds);
    }*/

    public SysRole findOne(Long roleId) {
        return sysRoleMapper.selectByPrimaryKey(roleId);
    }

    public List<SysRole> findAll() {
        return sysRoleMapper.findAll();
    }

    public List<SysRole> findRoleNames(String roleIds) {

        return sysRoleMapper.findRoleNames(roleIds);
    }

    public int updateRole(SysRole role) {
        return sysRoleMapper.updateByPrimaryKeySelective(role);
    }

    public int createRole(SysRole role)throws Exception {
        return sysRoleMapper.insertSelective(role);
    }

    public int deleteRole(Long id) {
        return sysRoleMapper.deleteByPrimaryKey(id);
    }

    public List<Map<String, Object>> findRolesByUser(Long id) {
        List<SysRole> roles=sysRoleMapper.findRolesByUser(id);
        List<SysRole> allRoles=sysRoleMapper.findAll();
        String userRoleIds ="";
        for (SysRole role:roles) {
            if (role==null){
                continue;
            }
            userRoleIds+=role.getId().toString()+",";
        }
        List<Map<String, Object>> treesMap = new ArrayList<Map<String, Object>>();
        for (SysRole role:allRoles) {
            if (role==null){
                continue;
            }
            Map<String, Object> nodeMap = new HashMap<String, Object>();
            nodeMap.put("id",role.getId());
            nodeMap.put("name",role.getDescription());

            if (userRoleIds.contains(role.getId().toString())){
                nodeMap.put("checked",true);
            }
            nodeMap.put("open","true");
            treesMap.add(nodeMap);
        }
        return treesMap;
    }

    public int saveUserRoles(Long id, Long[] roleIds) throws Exception {

        if (roleIds!=null&&id!=null){
            //删除以前的组织关系
            sysUserRolesMapper.deleteRolesByUser(id);
            for (Long s:roleIds) {
                SysUserRoles sur = new SysUserRoles(id,s);
                sysUserRolesMapper.insert(sur);
            }
        }else {
            throw  new Exception();
        }
        return 0;
    }

    public Integer countAll(String keyword) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("keyword",keyword);
        return sysRoleMapper.countAll(map);
    }

    public List<SysRole> findAllByPage(String keyword, Pager pager) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startRecords",pager.getStartRecords());
        map.put("pageSize",pager.getPageSize());
        map.put("keyword",keyword);
        return sysRoleMapper.findAllByPage(map);
    }

    public List<Map<String, Object>> getPermission(Long roleId) {
       List<SysResource> sysResources = resourceService.findAll();
        List<RolePermission> rolePermissions=rolePermissionMapper.findByRoleId(roleId);
        List<Map<String, Object>> treesMap = new ArrayList<Map<String, Object>>();
        Set<String> sets = new HashSet<String>();
        for (RolePermission pre:rolePermissions) {
            sets.add(pre.getResourceId().toString());
        }
        for (SysResource resource :sysResources) {
           if (null==resource){
               continue;
           }
            Map<String, Object> nodeMap = new HashMap<String, Object>();
            nodeMap.put("id",resource.getId());
            nodeMap.put("name",resource.getName());
            nodeMap.put("open",true);
            if (resource.getParentId()==0){
                nodeMap.put("pId","");
            }else{
                nodeMap.put("pId",resource.getParentId());
            }
            if (sets.contains(resource.getId().toString())){
                nodeMap.put("checked",true);
            }
            treesMap.add(nodeMap);
        }
        return treesMap;
    }

    public int savePermission(Long roleId, String[] pers)throws Exception{
        rolePermissionMapper.deleteByRoleId(roleId);
        List<RolePermission> permissions = new ArrayList<RolePermission>();
        if (pers!=null){
            for (String str:pers) {
               if (str.trim().equals("")||str==null){
                   continue;
               }
               String[] sub=str.split("#");
                RolePermission rolePermission= new RolePermission();
                    rolePermission.setRoleId(roleId);
                    rolePermission.setResourceId(Long.parseLong(sub[0]));
                    rolePermission.setPermission(sub[1]);
                    permissions.add(rolePermission);
            }

        }
       return rolePermissionMapper.savePermission(permissions);
    }

    public List<RolePermission> checkInfo(Long roleId) {
        return rolePermissionMapper.findByRoleId(roleId);
    }

    public int updateStatus(Long id, boolean status) throws Exception {
        SysRole sysRole = new SysRole();
        sysRole.setId(id);
        sysRole.setAvailable(status);
/*        if (status){
            sysRole.setAvailable(false);
        }else{
            sysRole.setAvailable(true);
        }*/
        return sysRoleMapper.updateByPrimaryKeySelective(sysRole);
    }

    public int batchDel(String checkbox) throws Exception {
        rolePermissionMapper.batchDel(checkbox);
        return sysRoleMapper.batchDel(checkbox);
    }

    public List<Map<String, Object>> getViewPermission(Long roleId) {
        List<SysResource> sysResources = resourceService.findAll();
        List<RolePermission> rolePermissions=rolePermissionMapper.findByRoleId(roleId);
        List<Map<String, Object>> treesMap = new ArrayList<Map<String, Object>>();
        Set<String> sets = new HashSet<String>();
        for (RolePermission pre:rolePermissions) {
            sets.add(pre.getResourceId().toString());
        }
        for (SysResource resource :sysResources) {
            if (null==resource){
                continue;
            }
            if (sets.contains(resource.getId().toString())){
                Map<String, Object> nodeMap = new HashMap<String, Object>();
                if (resource.getParentId()==0){
                    nodeMap.put("pId","");
                }else{
                    nodeMap.put("pId",resource.getParentId());
                }
                nodeMap.put("id",resource.getId());
                nodeMap.put("name",resource.getName());
                nodeMap.put("open",true);
                treesMap.add(nodeMap);
            }
        }
        return treesMap;
    }
}
