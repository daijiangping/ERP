package com.nuoplus.system.service;

import com.nuoplus.system.dao.SysOrganizationMapper;
import com.nuoplus.system.model.SysOrganization;
import com.nuoplus.system.utils.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/5 0005.
 */
@Service
public class OrganizationServiceImpl implements  OrganizationService {

    @Resource
    SysOrganizationMapper sysOrganizationMapper;


    public List<SysOrganization> findAll() {
        return sysOrganizationMapper.findAll();
    }

    public SysOrganization findOne(Long parentId) {
        return sysOrganizationMapper.selectByPrimaryKey(parentId);
    }

    public int createOrganization(SysOrganization organization) {
        return sysOrganizationMapper.insertSelective(organization);
    }

    public int updateOrganization(SysOrganization organization)throws Exception {
        return sysOrganizationMapper.updateByPrimaryKeySelective(organization);
    }

    public int deleteOrganization(Long id) {
        return sysOrganizationMapper.deleteByPrimaryKey(id);
    }

    public List<SysOrganization> findAllWithExclude(SysOrganization source) {
          Long orgId=source.getId();
          String orgIds=source.makeSelfAsParentIds();
        return sysOrganizationMapper.findAllWithExclude(orgId,orgIds);
    }

    public void move(SysOrganization source, SysOrganization target) {

    }

    public List<Map<String, Object>> getOrganizationByUser(Long id) {
        List<SysOrganization> orgs= findAll();
     /*   SysUser user=userService.findOne(id);*/
        List<SysOrganization> userOrg=sysOrganizationMapper.findOrganizationByUser(id);
          String userOrgIds ="";
        for (SysOrganization org:userOrg) {
            if (org==null){
                continue;
            }
            userOrgIds+=org.getId().toString()+",";
        }
        List<Map<String, Object>> treesMap = new ArrayList<Map<String, Object>>();
        for (SysOrganization org:orgs) {
            if (org==null){
                continue;
            }
            Map<String, Object> nodeMap = new HashMap<String, Object>();
            nodeMap.put("id",org.getId());
            nodeMap.put("name",org.getName());
            if (org.getParentId()==0){
                nodeMap.put("pId","");
            }else{
                nodeMap.put("pId",org.getParentId());
            }
            if (userOrgIds.contains(org.getId().toString())){
                nodeMap.put("checked",true);
            }
            nodeMap.put("open","true");
            treesMap.add(nodeMap);
        }
        return treesMap;
    }

    public Integer countSubOrgByOrgId(Long id, String keyword) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id",id);
        map.put("keyword",keyword);
        return sysOrganizationMapper.countSubOrgByOrgId(map);
    }

    public List<SysOrganization> findSubOrgByOrgId(Long id, String keyword, Pager pager) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id",id);
        map.put("startRecords",pager.getStartRecords());
        map.put("pageSize",pager.getPageSize());
        map.put("keyword",keyword);
        return sysOrganizationMapper.findSubOrgByOrgId(map);
    }

    public int saveOrganization(SysOrganization sysOrganization)throws Exception{
        return sysOrganizationMapper.insertSelective(sysOrganization);
    }

    public int batchDel(String checkbox) throws Exception {
        return sysOrganizationMapper.batchDel(checkbox);
    }

    public List<SysOrganization> findByparent(Long id) {
        return sysOrganizationMapper.findByparent(id);
    }

    public List<SysOrganization> findByparents(String ids) {
        return sysOrganizationMapper.findByparents(ids);
    }

    @Override
    public List<Map<String, Object>> getOrgZtreeSubNodes(Long id) {
        return sysOrganizationMapper.getOrgZtreeSubNodes(id);
    }
}
