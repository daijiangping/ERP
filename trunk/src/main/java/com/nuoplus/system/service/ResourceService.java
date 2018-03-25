package com.nuoplus.system.service;

import com.nuoplus.system.model.SysResource;
import com.nuoplus.system.utils.Pager;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/3 0003.
 */
public interface ResourceService {
    /**
     * 得到资源对应的权限字符串
     * @param resourceIds
     * @return
     */
   /* Set<String> findPermissions(Set<Long> resourceIds);*/

    /**
     * 根据用户权限得到菜单
     * @param permissions
     * @return
     */
 /*   List<Map<String, Object>> findMenus(Set<String> permissions);*/

    List<SysResource> findAll();

    SysResource findOne(Long resourceId);

    List<SysResource> findResourceNames(String resourceIds);

    int createResource(SysResource resource);

    int updateResource(SysResource resource)throws Exception;

    int deleteResource(Long id);

    List<SysResource> findResourceByUser(Long id);

    List<SysResource> findSubMenuByResourceId(String keyword, Long id, Pager pager)throws Exception;



    Integer countSubMenuByResourceId(Long id, String keyword);

    int saveResource(SysResource sysResource)throws Exception;

    int batchDel(String checkbox)throws  Exception ;

    List<SysResource> findByparent(Long id, String keyword);

    List<SysResource> findByparents(String checkbox);

    List<Map<String, Object>> findMenusByUserId(Long id);

    List<Map<String,Object>> getZtreeSubNodes(Long id);
}
