package com.nuoplus.system.service;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/11 0011.
 */
public interface SysUserOrganizationService {
    void saveUserOrg(Long id, Long[] orgids) throws Exception;

    List<Map<String,Object>> findOrgInfoByUsername(String username) throws Exception;

    List<Map<String,Object>> findParentOrgInfoByUsername(String username) throws Exception;
}
