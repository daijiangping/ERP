package com.nuoplus.system.service;

import com.nuoplus.system.dao.SysResourceMapper;
import com.nuoplus.system.model.SysResource;
import com.nuoplus.system.utils.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by Administrator on 2017/5/3 0003.
 */
@Service
public class ResourceServiceImpl implements ResourceService {

    @Resource
    SysResourceMapper sysResourceMapper;



  /*  public Set<String> findPermissions(Set<Long> resourceIds) {
        Set<String> permissions = new HashSet<String>();
        for(Long resourceId : resourceIds) {
            SysResource resource = findOne(resourceId);
            if(resource != null && !StringUtils.isEmpty(resource.getPermission())) {
                permissions.add(resource.getPermission());
            }
        }
        return permissions;
    }*/

/*    public  List<Map<String, Object>>findMenus(Set<String> permissions) {
        List<SysResource> allResources = findAll();
        List<Map<String, Object>> menus = new ArrayList<Map<String, Object>>();
        Map<String, Map<String, Object>> menusMap = new LinkedHashMap<String, Map<String, Object>>();
        Map<String, Object> subMap = new LinkedHashMap<String, Object>();
        for(SysResource resource : allResources) {
*//*            if(resource.isRootNode()) {
                continue;
            }*//*
            if(resource.getType() != SysResource.ResourceType.menu) {
                continue;
            }
*//*           if(!hasPermission(permissions, resource)) {
                continue;
            }*//*
            if (resource.getParentId()==0){
                Map<String, Object> map = new  HashMap<String, Object>();
                map.put("title",resource.getName());
                map.put("id",resource.getId());
                map.put("href",resource.getUrl());
                map.put("sub",new ArrayList<Map<String, Object>>());
                menusMap.put("menu" + resource.getId(), map);
                menus.add(map);
            }else {
                if (resource.getParentIds().split("/").length==2) {
                    Map<String, Object> tempMap = menusMap.get("menu" + resource.getParentId());
                    Map<String, Object> temp = new HashMap<String, Object>();
                    List<Map<String, Object>> submenus = (List<Map<String, Object>>) tempMap.get("sub");
                    temp.put("title",resource.getName());
                    temp.put("id",resource.getId());
                    temp.put("href",resource.getUrl());
                    temp.put("sub", new ArrayList<Map<String, Object>>());
                    submenus.add(temp);
                    subMap.put("sub" + resource.getId(), submenus);
                }else if(resource.getParentIds().split("/").length==3){
                    List<Map<String, Object>> subList = (List<Map<String, Object>>) subMap.get("sub" + resource.getParentId());
                    for (Map<String, Object> map : subList) {
                        if (map.get("id")==resource.getParentId()) {
                            List<SysResource> subs = (List<SysResource>) map.get("sub");
                            subs.add(resource);
                        }
                    }
                }
            }
        }
        return menus;
    }*/

    public List<SysResource> findAll() {
        return sysResourceMapper.findAll();
    }

    public SysResource findOne(Long resourceId) {
        return sysResourceMapper.selectByPrimaryKey(resourceId);
    }

    public List<SysResource> findResourceNames(String resourceIds) {
        return sysResourceMapper.findResourceNames(resourceIds);
    }

    public int createResource(SysResource resource) {
        return sysResourceMapper.insertSelective(resource);
    }

    public int updateResource(SysResource resource) throws Exception {
        return sysResourceMapper.updateByPrimaryKeySelective(resource);
    }

    public int deleteResource(Long id) {
        return sysResourceMapper.deleteByPrimaryKey(id);
    }

    public List<SysResource> findResourceByUser(Long id) {
        return sysResourceMapper.findResourceByUser(id);
    }

    public List<SysResource> findSubMenuByResourceId(String keyword, Long id, Pager pager) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id", id);
        map.put("startRecords", pager.getStartRecords());
        map.put("pageSize", pager.getPageSize());
        map.put("keyword", keyword);
        return sysResourceMapper.findSubMenuByResourceId(map);
    }

    public Integer countSubMenuByResourceId(Long id, String keyword) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id", id);
        map.put("keyword", keyword);
        return sysResourceMapper.countSubMenuByResourceId(map);
    }

    public int saveResource(SysResource sysResource) throws Exception {
        return sysResourceMapper.insertSelective(sysResource);
    }

    public int batchDel(String checkbox) throws Exception {
        return sysResourceMapper.batchDel(checkbox);
    }

    public List<SysResource> findByparent(Long id, String keyword) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id", id);
        map.put("keyword", keyword);
        return sysResourceMapper.findByparent(map);
    }

    public List<SysResource> findByparents(String checkbox) {
        return sysResourceMapper.findByparents(checkbox);
    }

    public List<Map<String, Object>> findMenusByUserId(Long id) {
        try {
            List<SysResource> resources = sysResourceMapper.findMenusByUserId(id);
            List<Map<String, Object>> menus = new ArrayList<Map<String, Object>>();
            Map<String, Map<String, Object>> menusMap = new LinkedHashMap<String, Map<String, Object>>();
            Map<String, Object> subMap = new LinkedHashMap<String, Object>();
            for (SysResource resource : resources) {

                if (resource.getType() != SysResource.ResourceType.menu) {
                    continue;
                }
                if (resource.getParentId() == 0) {
                    Map<String, Object> map = new HashMap<String, Object>();
                    map.put("title", resource.getName());
                    map.put("id", resource.getId());
                    map.put("href", resource.getUrl());
                    map.put("icon", resource.getIcon());
                    map.put("sub", new ArrayList<Map<String, Object>>());
                    menusMap.put("menu" + resource.getId(), map);
                    menus.add(map);
                } else {
                    if (resource.getParentIds().split("/").length == 2) {
                        Map<String, Object> tempMap = menusMap.get("menu" + resource.getParentId());
                        Map<String, Object> temp = new HashMap<String, Object>();
                        List<Map<String, Object>> submenus = (List<Map<String, Object>>) tempMap.get("sub");
                        temp.put("title", resource.getName());
                        temp.put("id", resource.getId());
                        temp.put("href", resource.getUrl());
                        temp.put("icon", resource.getIcon());
                        temp.put("sub", new ArrayList<Map<String, Object>>());
                        submenus.add(temp);
                        subMap.put("sub" + resource.getId(), submenus);
                    } else if (resource.getParentIds().split("/").length == 3) {
                        List<Map<String, Object>> subList = (List<Map<String, Object>>) subMap.get("sub" + resource.getParentId());
                        System.out.println(subList);
                        for (Map<String, Object> map : subList) {
                            if (Long.parseLong(map.get("id").toString()) == resource.getParentId()) {
                                List<SysResource> subs = (List<SysResource>) map.get("sub");
                                subs.add(resource);
                            }
                        }
                    }
                }
            }
            return menus;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Map<String, Object>> getZtreeSubNodes(Long id) {
        return sysResourceMapper.getZtreeSubNodes(id);
    }


/*    private boolean hasPermission(Set<String> permissions, SysResource resource) {
*//*       if(StringUtils.isEmpty(resource.getPermission())) {
            return true;
        }*//*
        for(String permission : permissions) {
           if(new WildcardPermission(permission).implies(new WildcardPermission(resource.getSn()))) {
                return true;
            }
        }
        return false;
    }*/
}
