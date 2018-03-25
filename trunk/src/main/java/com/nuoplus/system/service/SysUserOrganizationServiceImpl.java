package com.nuoplus.system.service;

import com.nuoplus.system.dao.SysUserOrganizationMapper;
import com.nuoplus.system.model.SysUserOrganization;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/11 0011.
 */
@Service
public class SysUserOrganizationServiceImpl implements SysUserOrganizationService {

    @Resource
    SysUserOrganizationMapper sysUserOrganizationMapper;

    public void saveUserOrg(Long id, Long[] orgids)throws Exception {

        if (orgids!=null&&id!=null){
            //删除以前的组织关系
            sysUserOrganizationMapper.deleteByUserId(id);
            for (Long s:orgids) {
                SysUserOrganization sur = new SysUserOrganization(id,s);
                sysUserOrganizationMapper.insert(sur);
            }
        }else {
            throw  new Exception();
        }
    }

    public List<Map<String, Object>> findOrgInfoByUsername(String username) throws Exception {
        return sysUserOrganizationMapper.findOrgInfoByUsername(username);
    }

    public List<Map<String, Object>> findParentOrgInfoByUsername(String username) throws Exception {
        return sysUserOrganizationMapper.findParentOrgInfoByUsername(username);
    }
}
