package com.nuoplus.system.controller;

import com.nuoplus.system.model.RolePermission;
import com.nuoplus.system.model.SysRole;
import com.nuoplus.system.service.ResourceService;
import com.nuoplus.system.service.RoleService;
import com.nuoplus.system.utils.Pager;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/role")
public class RoleController {

    @Resource
    private RoleService roleService;

    @Resource
    private ResourceService resourceService;

    /**
     * 跳转页面
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("roleList", roleService.findAll());
        return "role/index";
    }

    /**
     * 角色列表数据
     * @param keyword
     * @param limit
     * @param page
     * @return
     */
    @RequestMapping(value ="getlist",method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> getlist(String keyword,Integer page, Integer limit) {

        Map<String, Object> result =  new HashMap<String, Object>();
        Integer counts=roleService.countAll(keyword);
        Pager pager = new Pager(limit, page, counts);
        List<SysRole> list=roleService.findAllByPage(keyword,pager);
        result.put("data", list);
        result.put("count", counts);
        result.put("code", "0");
        return result;
    }


    /**
     * 新增角色
     * @param role
     * @return
     */
    @RequiresPermissions("role:add")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> create(SysRole role) {

        Map<String, Object> result = new HashMap<String, Object>();
        try {
            roleService.createRole(role);
            result.put("success",true);
            result.put("msg","添加成功");
        } catch (Exception e) {
            result.put("success", false);
            result.put("msg", "添加失败");
        }
        return result;
    }

    /**
     * 更新角色状态
     * @param id
     * @param status
     * @return
     */
    @RequiresPermissions("role:add")
    @RequestMapping(value = "/updateStatus", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> updateStatus(Long id,boolean status) {

        Map<String, Object> result = new HashMap<String, Object>();
        try {
            roleService.updateStatus(id,status);
            result.put("success",true);
            result.put("msg","更新成功");
        } catch (Exception e) {
            result.put("success", false);
            result.put("msg", "更新失败");
        }
        return result;
    }

    /**
     * 删除角色
     * @param checkbox
     * @return
     */
    @RequiresPermissions("role:del")
    @RequestMapping(value = "/batchDel", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> batchDel(String checkbox ) {

        Map<String, Object> result = new HashMap<String, Object>();
        try {
            roleService.batchDel(checkbox);
            result.put("success",true);
            result.put("msg","删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success",false);
            result.put("msg","删除失败");
        }
        return result;
    }

    /**
     * 根据用户id查询角色
     * @param id
     * @return
     */
    @RequiresPermissions("role:check")
    @RequestMapping(value = "/findRolesByUser", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> findRolesByUser(Long id) {
        Map<String, Object> result = new HashMap<String, Object>();
       List<Map<String, Object>> roles=roleService.findRolesByUser(id);
        result.put("nodes",roles);
        result.put("success",true);
        return result;
    }

    /**
     * 给用户添加角色
     * @param id
     * @param roleIds
     * @return
     */
    @RequiresPermissions("role:add")
    @RequestMapping(value = "/saveUserRoles", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> findRolesByUser(Long id,@RequestParam(value = "orgids") Long[] roleIds) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            roleService.saveUserRoles(id,roleIds);
            result.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success",false);
        }

        return result;
    }

    /**
     * 根据角色id查找权限
     * @param roleId
     * @return
     */
    @RequiresPermissions("role:check")
    @RequestMapping(value = "/getPermission", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getPermission(Long roleId) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            List<Map<String, Object>> resource  =  roleService.getPermission(roleId);
            result.put("success",true);
            result.put("nodes", resource);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success",false);
        }
        return result;
    }

    /**
     * 查看权限
     * @param roleId
     * @return
     */
    @RequiresPermissions("role:check")
    @RequestMapping(value = "/getViewPermission", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getViewPermission(Long roleId) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            List<Map<String, Object>> resource  =  roleService.getViewPermission(roleId);
            result.put("success",true);
            result.put("nodes", resource);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success",false);
        }
        return result;
    }

    /**
     * 给角色赋予权限
     * @param roleId
     * @param pers
     * @return
     */
    @RequiresPermissions("role:add")
    @RequestMapping(value = "/savePermission", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> savePermission(Long roleId,@RequestParam(value = "permissions") String[] pers) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            roleService.savePermission(roleId,pers);
            result.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success",false);
        }
        return result;
    }

    /**
     * 检查是否有权限
     * @param roleId
     * @return
     */
    @RequiresPermissions("role:add")
    @RequestMapping(value = "/checkInfo", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> savePermission(Long roleId) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            List<RolePermission> permissions = roleService.checkInfo(roleId);
            result.put("success",true);
            result.put("permissions",permissions);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success",false);
        }
        return result;
    }
}
