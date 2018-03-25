package com.nuoplus.system.controller;

import com.nuoplus.system.model.PushNodes;
import com.nuoplus.system.model.SysUser;
import com.nuoplus.system.service.PushNodesService;
import com.nuoplus.system.utils.Pager;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/1/23 0023.
 */
@Controller
@RequestMapping("push")
public class PushNodesController {

    @Resource
    private PushNodesService pushNodesService;

    /**
     * 跳转用户页面
     * @param model
     * @return
     */
    @RequestMapping(value ="pushNodes",method = RequestMethod.GET)
    public String list(Model model) {
        return "page/push/push_nodes";
    }

    /**
     * 用户列表数据
     * @param
     * @param pagesize
     * @param p
     * @return
     */
    @RequestMapping(value ="getlist",method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getlist(String keyword, Integer pagesize, Integer p) {

        Map<String, Object> result =  new HashMap<String, Object>();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("keyword",keyword);
        Integer counts= pushNodesService.countPushNodes(map);
        Pager pager = new Pager(pagesize,p,counts);
        map.put("startRecords",pager.getStartRecords());
        map.put("pageSize",pager.getPageSize());
        map.put("keyword",keyword);
        List<PushNodes> list=pushNodesService.findAll(map);
        map.put("list",list);
        result.put("data",map);
        result.put("status","200");
        result.put("pages",pager.getPages());
        return result;
    }

    /**
     * 新增用户
     * @param pushNodes
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("pushNodes:add")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> create(PushNodes pushNodes, RedirectAttributes redirectAttributes) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            pushNodesService.insertNonEmptyPushNodes(pushNodes);
            data.put("status",200);
            data.put("msg","添加成功");
            data.put("url","reload");
            data.put("render",true);
        } catch (Exception e) {
            data.put("msg","添加失败");
            e.printStackTrace();
        }

        return data;
    }


    /**
     * 删除用户
     * @param id
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("pushNodes:del")
    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        pushNodesService.deletePushNodesById(id);
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("status",200);
        data.put("msg","删除成功");
        data.put("url","reload");
        data.put("render",true);
        return data;
    }

    @RequiresPermissions("pushNodes:update")
    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> update(PushNodes pushNodes) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            String status=pushNodes.getStatus().equals("false")?"关":"开";
            pushNodes.setStatus(status);
            pushNodesService.updateNonEmptyPushNodesById(pushNodes);
            data.put("status",200);
            data.put("msg","更新成功");
        } catch (Exception e) {
            data.put("msg","更新失败");
            e.printStackTrace();
        }


        return data;
    }
}
