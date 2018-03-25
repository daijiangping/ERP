package com.nuoplus.system.service;

import com.nuoplus.system.dao.RolePermissionMapper;
import com.nuoplus.system.dao.SysResourceMapper;
import com.nuoplus.system.dao.SysRoleMapper;
import com.nuoplus.system.dao.SysUserMapper;
import com.nuoplus.system.model.SysRole;
import com.nuoplus.system.model.SysUser;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.apache.xmlbeans.impl.piccolo.util.DuplicateKeyException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

/**
 * Created by Administrator on 2017/5/3 0003.
 */
@Service
public class UserServiceImpl implements UserService {
    private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);

    @Resource
    SysUserMapper sysUserMapper;
    @Resource
    SysRoleMapper sysRoleMapper;
    @Resource
    PasswordHelper passwordHelper;
    @Resource
    RolePermissionMapper rolePermissionMapper;
    @Resource
    SysResourceMapper sysResourceMapper;
/*    @Resource
    SysUserOrganizationMapper sysUserOrganizationMapper;*/

    public SysUser findByUsername (String username){
       return sysUserMapper.findByUsername(username);
    }

    public Set<String> findRoles(String username) {
        Set<String> roles = new HashSet<String>();
        SysUser user =findByUsername(username);
        if(user == null) {
            return Collections.EMPTY_SET;
        }
       List<SysRole>  sysUserRoles =sysRoleMapper.findRolesByUser(user.getId());
        if (!sysUserRoles.isEmpty()){
            for (SysRole role:sysUserRoles) {
                roles.add(role.getId().toString());
            }
        }
        return roles;
    }

    public Set<String> findPermissions(String username) {
        Set<String> permissions=rolePermissionMapper.findPermissionByUserName(username);
        return permissions;
    }

    public List<SysUser> findAll(Map<String, Object> map)throws Exception{
        return sysUserMapper.findAll(map);
    }

    public int createUser(SysUser user)throws Exception {
        if (null==user.getPassword() || user.getPassword().equals("")){
            user.setPassword("123456");
        }
        passwordHelper.encryptPassword(user);
        int flag = sysUserMapper.insertSelective(user);
        return flag ;
    }

    public int updateUser(SysUser user)throws Exception {
        return sysUserMapper.updateByPrimaryKeySelective(user);
    }

    public SysUser findOne(Long id) {
        return sysUserMapper.selectByPrimaryKey(id);
    }

    public int deleteUser(Long id)throws Exception{
        return sysUserMapper.deleteByPrimaryKey(id);
    }

    public Boolean checkPassword(Long id, String psssword)throws Exception {
        SysUser  sysUser= sysUserMapper.selectByPrimaryKey(id);
        String newPassword = new SimpleHash(
                "md5",
                psssword,
                ByteSource.Util.bytes(sysUser.getCredentialsSalt()),
                2).toHex();
        System.out.println("密码=============== "+newPassword);
/*            Subject currentUser = SecurityUtils.getSubject();
            UsernamePasswordToken upToken = new UsernamePasswordToken(sysUser.getUsername(), psssword);
            currentUser.login(upToken);*/
        return sysUser.getPassword().equals(newPassword.trim())?true:false;
    }
    public int changePassword(Long  id, String newPassword)throws Exception {
        SysUser  sysUser= sysUserMapper.selectByPrimaryKey(id);
        sysUser.setPassword(newPassword);
        passwordHelper.encryptPassword(sysUser);
        return sysUserMapper.updateByPrimaryKeySelective(sysUser);
    }

    public Integer countAll(String keyword)throws Exception{
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("keyword",keyword);
        return sysUserMapper.countAll(map);
    }

    public int batchDel(String checkbox) {
        return sysUserMapper.batchDel(checkbox);
    }

    @Override
    public int importTeacherList() throws Exception {
        List<Map<String, Object>> jgxs = sysUserMapper.findAllJGXX();
        for (Map<String, Object> map : jgxs) {
            SysUser user = new SysUser();
            user.setUsername(map.get("YGID").toString());
            user.setRealname(map.get("XM").toString());
        /*    user.setLocked(false);*/
            user.setPassword("123456");
            passwordHelper.encryptPassword(user);
/*            SysUserOrganization so = new SysUserOrganization();
            so.getUserId();
            sysUserOrganizationMapper.insertSelective();*/
            sysUserMapper.insertSelective(user);
        }
        return 1;
    }

    @Override
    public Map<String, Object> finOrgInfo(String username) {
        if(sysUserMapper.finOrgInfo(username).isEmpty()){
            return null;
        }else {
        return sysUserMapper.finOrgInfo(username).get(0);
        }
    }

    @Override
    public Map<String, Object> finQyInfo(String username) {
        if(sysUserMapper.finQyInfo(username).isEmpty()){
            return null;
        }else {
            return sysUserMapper.finQyInfo(username).get(0);
        }
    }

    @Override
    public List<Map<String, Object>> getVersion() throws Exception {
        return sysUserMapper.getVersion();
    }
}
