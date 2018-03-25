package com.nuoplus.system.service;

import com.nuoplus.system.model.SysOrganization;
import com.nuoplus.system.utils.Pager;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/5 0005.
 */
public interface OrganizationService {
    List<SysOrganization> findAll();

    SysOrganization findOne(Long parentId);

    int createOrganization(SysOrganization organization);

    int updateOrganization(SysOrganization organization)throws Exception;

    int deleteOrganization(Long id);

    List<SysOrganization> findAllWithExclude(SysOrganization source);

    void move(SysOrganization source, SysOrganization target);

    List<Map<String, Object>>  getOrganizationByUser(Long id);

    Integer countSubOrgByOrgId(Long id, String keyword);

    List<SysOrganization> findSubOrgByOrgId(Long id, String keyword, Pager pager);

    int saveOrganization(SysOrganization sysOrganization)throws Exception;

    int batchDel(String checkbox)throws Exception;

    List<SysOrganization> findByparent(Long id);

    List<SysOrganization> findByparents(String ids);

   //根据组织机构树父节点获取组织机构数子节点
    List<Map<String,Object>> getOrgZtreeSubNodes(Long id);
}
