package com.nuoplus.system.controller;

import com.nuoplus.system.model.SysDictionary;
import com.nuoplus.system.service.SysDictionaryService;
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
import java.util.UUID;

/**
 * Created by Administrator on 2017/5/26 0026.
 */
@Controller
@RequestMapping("/dictionary")
public class SysDictionaryController {
    @Resource
    SysDictionaryService sysDictionaryService;


    @RequestMapping(value ="list",method = RequestMethod.GET)
    public String list(Model model) {
        return "dictionary/index";
    }

    /**
     *字典词条数
     * @param model
     * @return
     */

    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    public String showTree(Model model) {
        model.addAttribute("dictionaryList", sysDictionaryService.findAll());
        return "dictionary/tree";
    }

    /**
     * 右侧跳转列表页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/{id}/findListByParent", method = RequestMethod.GET)
    public String showMaintainForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("parentId", sysDictionaryService.findOne(id).getParentId());
        return "dictionary/list";
    }

    /**
     * 词条列表
     * @param id
     * @param limit
     * @param page
     * @return
     */
    @RequiresPermissions("dictionary:check")
    @RequestMapping(value = "/{id}/findListByParent", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> findListByParent(@PathVariable("id") Long id,Integer page, Integer limit,String keyword) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            Integer counts = sysDictionaryService.countSubOrgByDicId(id,keyword);
            Pager pager = new Pager(limit, page, counts);
            List<SysDictionary> list = sysDictionaryService.findSubOrgByDicId(id,keyword,pager);
            result.put("data", list);
            result.put("count", counts);
            result.put("code", "0");
        } catch (Exception e) {
            e.printStackTrace();
            result.put("msg", "查询失败");
        }
        return result;
    }

    /**
     * 新增词条节点
     * @param sysDictionary
     * @return
     */
    @RequiresPermissions("dictionary:add")
    @RequestMapping(value ="create",method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> saveResource(SysDictionary sysDictionary) {
        Map<String, Object> result =  new HashMap<String, Object>();
        try {
            sysDictionaryService.saveDictionary(sysDictionary);
            result.put("success",true);
            result.put("msg","添加成功");
        } catch (Exception e) {
            result.put("success",false);
            result.put("msg","添加失败");
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 删除词条
     * @param id
     * @param redirectAttributes
     * @return
     */
   @RequiresPermissions("dictionary:del")
    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes){
        Map<String, Object> result = new HashMap<String, Object>();
       Integer counts= null;
       try {
           counts = sysDictionaryService.countSubOrgByDicId(id,"");
       if (counts==0||counts==null){
            try {
                sysDictionaryService.deleteDictionary(id);
                result.put("success",true);
                result.put("msg","删除成功");
            } catch (Exception e) {
                result.put("success",false);
                result.put("msg","删除失败");
                e.printStackTrace();
            }
        }else {
            result.put("msg","该节点下还有字节点，请先删除子节点数据");
            result.put("success",false);
        }
       } catch (Exception e) {
           result.put("msg","网络繁忙");
           result.put("success",false);
           e.printStackTrace();
       }
        return result;
    }

    /**
     * 更新词条
     * @param sysDictionary
     * @return
     */
    @RequiresPermissions("dictionary:update")
    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> update(SysDictionary sysDictionary) {
        Map<String, Object> result = new HashMap<String, Object>();
/*        if (sysDictionary.getTitle()==null){
            sysDictionary.setAvailable(sysDictionary.getAvailable()?false:true);
        }*/
        if (sysDictionary.getUid()==null||sysDictionary.getUid().equals("null")||sysDictionary.getUid().equals("")){
            sysDictionary.setUid(UUID.randomUUID().toString().replace("-",""));
        }
        try {
            sysDictionaryService.updateDictionary(sysDictionary);
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
     * 批量删除
     * @param checkbox
     * @return
     */
    @RequiresPermissions("dictionary:del")
    @RequestMapping(value = "/batchDel", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> batchDel(String checkbox ) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            if(sysDictionaryService.findByparents(checkbox).isEmpty()){
                sysDictionaryService.batchDel(checkbox);
                data.put("msg","批量成功");
                data.put("success",true);
            }else {
                data.put("msg","所选节点下，尚有未删除的子节点，请先删除子节点");
                data.put("success",false);
            }
        } catch (Exception e) {
            e.printStackTrace();
            data.put("msg","批量删除失败");
        }
        return data;
    }
    //根据数据字典树父节点获取组织机构数子节点
    @RequestMapping(value ="/getDicZtreeSubNodes",method = RequestMethod.POST)
    @ResponseBody
    public List<Map<String, Object>> getDicZtreeSubNodes(Long id) {
        List<Map<String, Object>> result = null;
        try {
            result= sysDictionaryService.getDicZtreeSubNodes(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
