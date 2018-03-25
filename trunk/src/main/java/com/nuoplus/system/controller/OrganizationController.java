package com.nuoplus.system.controller;

import com.nuoplus.system.model.SysOrganization;
import com.nuoplus.system.service.OrganizationService;
import com.nuoplus.system.service.SysUserOrganizationService;
import com.nuoplus.system.utils.Pager;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/organization")
public class OrganizationController {


    @Resource
    private OrganizationService organizationService;
    @Resource
    private SysUserOrganizationService sysUserOrganizationService;

    /**
     * 跳转组织机构页面
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        return "organization/index";
    }

    @RequiresPermissions("organization:check")
    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    public String showTree(Model model) {
        model.addAttribute("organizationList", organizationService.findAll());
        return "organization/tree";
    }


    /**
     * ztree右侧跳转页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/{id}/maintain", method = RequestMethod.GET)
    public String showMaintainForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("parentId", organizationService.findOne(id).getParentId());
        return "organization/maintain";
    }

    /**
     * 组织列表
     * @param id
     * @param pagesize
     * @param p
     * @return
     */
    @RequiresPermissions("resource:check")
    @RequestMapping(value = "/{id}/maintain", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> showMaintainForm(@PathVariable("id") Long id,String keyword,Integer page, Integer limit) {
        page=page==null?0:page;
        limit=limit==null?10:limit;
        Map<String, Object> result = new HashMap<>();
        Integer counts = organizationService.countSubOrgByOrgId(id,keyword);
        Pager pager = new Pager(limit, page, counts);
        List<SysOrganization> list = organizationService.findSubOrgByOrgId(id,keyword,pager);
        result.put("data", list);
        result.put("count", counts);
        result.put("code", "0");
        return result;
    }

    /**
     * 组织更新/
     * @param organization
     * @return
     */
    @RequiresPermissions("organization:update")
    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> update(SysOrganization organization) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            organizationService.updateOrganization(organization);
            result.put("success",true);
            result.put("msg","更新成功");
        } catch (Exception e) {
            result.put("success",false);
            result.put("msg","更新失败");
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 单条组织信息删除
     * @param id
     * @return
     */
    @RequiresPermissions("organization:del")
    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> delete(@PathVariable("id") Long id) {
        Map<String, Object> result = new HashMap<String, Object>();
        if(organizationService.findByparent(id).isEmpty()){
            organizationService.deleteOrganization(id);
            result.put("success",true);
            result.put("msg","删除成功");
        }else {
            result.put("msg","不能删除,请先删除该组织下分组织");
            result.put("success",false);
        }

        return result;
    }

    /**
     * 批量删除组织
     * @param checkbox
     * @return
     */
    @RequiresPermissions("organization:del")
    @RequestMapping(value = "/batchDel", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> batchDel(String checkbox ) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            if(organizationService.findByparents(checkbox).isEmpty()){
                organizationService.batchDel(checkbox);
                data.put("status",200);
                data.put("msg","批量删除成功");
                data.put("render",true);
                data.put("url","reload");
                data.put("success",true);
            }else {
                data.put("msg","所选组织下有分组织，请先删除分组织");
                data.put("success",false);
            }

        } catch (Exception e) {
            data.put("msg","批量删除失败");
            e.printStackTrace();
        }
        return data;
    }

    /**
     * 获取用户组织信息
     * @param id
     * @return
     */
    @RequiresPermissions("organization:check")
    @RequestMapping(value = "/getOrganization", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getOrganization(Long id) {
        Map<String, Object> result = new HashMap<String, Object>();
        List<Map<String, Object>> orgs = organizationService.getOrganizationByUser(id);
        result.put("nodes", orgs);
        result.put("success", true);
        return result;
    }

    /**
     * 组织设置
     * @param id
     * @param orgids
     * @return
     */
    @RequiresPermissions("organization:add")
    @RequestMapping(value = "/saveUserOrg", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> saveUserOrg(Long id, @RequestParam(value = "orgids") Long[] orgids) {
        Map<String, Object> result = new HashMap<String, Object>();

        try {
            sysUserOrganizationService.saveUserOrg(id, orgids);
            result.put("success", true);
            result.put("msg", "更改组织成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success", false);
            result.put("msg", "更改组织失败");
        }
        return result;
    }

    /**
     * 资源添加
     * @param sysOrganization
     * @return
     */
    @RequiresPermissions("organization:add")
    @RequestMapping(value = "create", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> saveResource(SysOrganization sysOrganization){
        SysOrganization parent = organizationService.findOne(sysOrganization.getParentId());
        sysOrganization.setParentIds(parent.makeSelfAsParentIds());
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            organizationService.saveOrganization(sysOrganization);
            result.put("success", true);
            result.put("msg", "添加成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success", false);
            result.put("msg", "添加失败");
        }
        return result;
    }
    //根据组织机构树父节点获取组织机构数子节点
    @RequestMapping(value = "/getOrgZtreeSubNodes", method = RequestMethod.POST)
    @ResponseBody
    public  List<Map<String, Object>> getOrgZtreeSubNodes(Long id) {
        List<Map<String, Object>> result = null;
        try {
            result= organizationService.getOrgZtreeSubNodes(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}