package com.nuoplus.system.service;

import com.nuoplus.system.model.SysUser;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by Administrator on 2017/5/3 0003.
 */
public interface UserService {
    SysUser findByUsername(String username);
    /**
     * 根据用户名查找其角色
     * @param username
     * @return
     */
     Set<String> findRoles(String username);

    /**
     * 根据用户名查找其权限
     * @param username
     * @return
     */
    Set<String> findPermissions(String username);

    List<SysUser> findAll(Map<String, Object> map)throws Exception;

    int createUser(SysUser user)throws Exception;

    int updateUser(SysUser user)throws Exception;

    SysUser findOne(Long id);

    int deleteUser(Long id)throws Exception;

    Boolean checkPassword(Long id, String psssword)throws Exception;

    int changePassword(Long id, String newPassword) throws Exception;

    Integer countAll(String keyword)throws Exception;

    int batchDel(String checkbox);

    int importTeacherList()throws Exception;

    Map<String,Object> finOrgInfo(String username);

    Map<String,Object> finQyInfo(String username);

    List<Map<String,Object>> getVersion()throws Exception;
}
