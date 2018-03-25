package com.nuoplus.system.controller;

import com.nuoplus.system.model.SysResource;
import com.nuoplus.system.service.ResourceService;
import com.nuoplus.system.utils.Pager;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 */
@Controller
@RequestMapping("/resource")
public class ResourceController {

    @Autowired
    private ResourceService resourceService;

    @ModelAttribute("types")
    public SysResource.ResourceType[] resourceTypes() {
        return SysResource.ResourceType.values();
    }

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("resourceList", resourceService.findAll());
        return "resource/index";
    }

    /**
     * 更新资源
     * @param resource
     * @return
     */
    @RequiresPermissions("resource:update")
    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> update(SysResource resource) {
        Map<String, Object> result = new HashMap<String, Object>();
/*        if(resource.getName()==null){
            resource.setAvailable(resource.getAvailable()==true?false:true);
        }*/
        try {
            resourceService.updateResource(resource);
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
     * 删除资源
     * @param id
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("resource:del")
    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        Map<String, Object> data = new HashMap<String, Object>();
        if (resourceService.findByparent(id, "").isEmpty()){
            resourceService.deleteResource(id);
            data.put("msg","删除成功");
            data.put("success",true);
        }else {
            data.put("msg","该节点下还有字节点，请先删除子节点数据");
            data.put("success",false);
        }
        return data;
    }

    /**
     * 批量删除
     * @param checkbox
     * @return
     */
    @RequiresPermissions("resource:del")
    @RequestMapping(value = "/batchDel", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> batchDel(String checkbox ) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            if(resourceService.findByparents(checkbox).isEmpty()){
                resourceService.batchDel(checkbox);
                data.put("msg","批量删除成功");
                data.put("success",true);
            }else {
                data.put("msg","所选节点下，尚有未删除的子节点，请先删除子节点");
                data.put("success",false);
            }
        } catch (Exception e) {
            e.printStackTrace();
            data.put("success",false);
            data.put("msg","批量删除失败");
        }
        return data;
    }

    /**
     * 资源导航树
     * @param model
     * @return
     */
    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    public String showTree(Model model) {
        model.addAttribute("resources", resourceService.findAll());
        return "resource/tree";
    }
    @RequestMapping(value = "/{id}/maintain", method = RequestMethod.GET)
    public String maintain(@PathVariable("id") Long id,Model model) {
/*      List<SysResource> subMenu = resourceService.findSubMenuByResourceId(id);
        model.addAttribute("subMenu",subMenu);*/
        SysResource parent = resourceService.findOne(id);
        model.addAttribute("id",id);
     /*   model.addAttribute("parentId",parent.getParentId());*/
        return "resource/maintain";
    }
    @RequiresPermissions("resource:check")
    @RequestMapping(value ="/{id}/maintain",method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getsubMenu(@PathVariable("id") Long id,String keyword,Integer page, Integer limit) {

        Map<String, Object> result =  new HashMap<String, Object>();
        try {
            Integer counts=resourceService.countSubMenuByResourceId(id,keyword);
            Pager pager = new Pager(limit,page,counts);
            List<SysResource> list = resourceService.findSubMenuByResourceId(keyword,id,pager);
//            if (id==0){
//                 list=resourceService.findByparent(id,keyword);
//            }else {
//                 list=resourceService.findSubMenuByResourceId(keyword,id,pager);
//            }
            result.put("data", list);
            result.put("count", counts);
            result.put("code", "0");
            result.put("success",true);
        } catch (Exception e) {
            result.put("success",false);
            result.put("msg", "查询失败");
            e.printStackTrace();
        }
        return result;
    }
    @RequiresPermissions("resource:check")
    @RequestMapping(value ="create",method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> saveResource(SysResource sysResource) {
            String parentIds="";
        if(sysResource.getParentId()!=0){
            SysResource parent = resourceService.findOne(sysResource.getParentId());
            parentIds=parent.makeSelfAsParentIds();
        }else {
            parentIds="0/";
        }
        sysResource.setParentIds(parentIds);
        Map<String, Object> result =  new HashMap<String, Object>();
        try {
            resourceService.saveResource(sysResource);
            result.put("msg","添加成功");
            result.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("msg","添加失败");
            result.put("success",false);
        }

        return result;
    }
    @RequestMapping(value ="/getZtreeSubNodes",method = RequestMethod.POST)
    @ResponseBody
    public List<Map<String, Object>> getZtreeSubNodes(Long id) {
        List<Map<String, Object>> result = null;
        try {
            result= resourceService.getZtreeSubNodes(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
