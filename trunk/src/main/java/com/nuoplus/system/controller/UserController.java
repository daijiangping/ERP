package com.nuoplus.system.controller;

import com.nuoplus.system.model.SysUser;
import com.nuoplus.system.service.OrganizationService;
import com.nuoplus.system.service.RoleService;
import com.nuoplus.system.service.UserService;
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
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private OrganizationService organizationService;
    @Resource
    private RoleService roleService;

    /**
     * 跳转用户页面
     * @param model
     * @return
     */
    @RequestMapping(value ="list",method = RequestMethod.GET)
    public String list(Model model) {
        return "user/list";
    }

    /**
     * 用户列表数据
     * @param
     * @param page
     * @param limit
     * @return
     */
    @RequestMapping(value ="getlist",method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> getlist(String keyword,Integer page, Integer limit) {

        Map<String, Object> result =  new HashMap<>();
        Map<String, Object> map = new HashMap<>();
        try {
            Integer counts=userService.countAll(keyword);
            Pager pager = new Pager(limit, page, counts);
            map.put("startRecords",pager.getStartRecords());
            map.put("pageSize",pager.getPageSize());
            map.put("keyword",keyword);
            List<SysUser> list=userService.findAll(map);
            result.put("data",list);
            result.put("code","0");
            result.put("count",counts);
            result.put("success",true);
        } catch (Exception e) {
            result.put("success",true);
            result.put("msg","系统错误");
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 新增用户
     * @param user
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("user:add")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> create(SysUser user, RedirectAttributes redirectAttributes) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            userService.createUser(user);
            data.put("msg","添加成功");
            data.put("success",true);
        } catch (Exception e) {
            data.put("success",false);
            data.put("msg","添加失败");
            e.printStackTrace();
        }

        return data;
    }

    /**
     * 用户修改
     * @param user
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("user:update")
    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> update(SysUser user, RedirectAttributes redirectAttributes) {
        Map<String, Object> result = new HashMap<String, Object>();
/*        if(user.getUsername()==null){
            user.setLocked(user.getLocked()==true?false:true);
        }*/
        try {
            userService.updateUser(user);
            result.put("msg","更新成功");
            result.put("success",true);
        } catch (Exception e) {
            result.put("success",false);
            result.put("msg","更新失败");
        }
        return result;
    }

    /**
     * 删除用户
     * @param id
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("user:del")
    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String, Object> delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            userService.deleteUser(id);
            result.put("msg","删除成功");
            result.put("success",true);
        } catch (Exception e) {
            result.put("success",false);
            result.put("msg","删除失败");
        }
     /*    redirectAttributes.addFlashAttribute("msg", "删除成功");*/
        return result;
    }
    /**
     * 批量删除用户
     * @param checkbox
     * @return
     */
    @RequiresPermissions("user:del")
    @RequestMapping(value = "/batchDel", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> batchDel(String checkbox ) {

        Map<String, Object> result = new HashMap<String, Object>();
        try {
            userService.batchDel(checkbox);
            result.put("msg","删除成功");
            result.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("msg","删除失败");
        }
        return result;
    }
    @RequestMapping(value ="importTeacherList",method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> importTeacherList() {

        Map<String, Object> result =  new HashMap<String, Object>();
        try {
            userService.importTeacherList();
            result.put("msg","导入老师成功");
        } catch (Exception e) {
            result.put("msg","导入老师信息出错");
            e.printStackTrace();
        }

        return result;
    }
    @RequiresPermissions("user:update")
    @RequestMapping(value = "/{id}/checkPassword", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> checkPassword(@PathVariable("id") Long id, String password) {
        Map<String, Object> reslut = new HashMap<String, Object>();
        Boolean flag= null;
        try {
            flag = userService.checkPassword(id, password);
            if (flag){
                reslut.put("success",true);
                reslut.put("msg","密码正确");
            }else {
                reslut.put("success",false);
                reslut.put("msg","密码不正确");
            }
        } catch (Exception e) {
            reslut.put("success",false);
            reslut.put("msg","系统发生异常");
            e.printStackTrace();
        }

        return reslut;
    }
    @RequiresPermissions("user:update")
    @RequestMapping(value = "/{id}/updatePassword", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> changePassword(@PathVariable("id") Long id, String psssword2) {
        Map<String, Object> reslut = new HashMap<String, Object>();
        try {
            userService.changePassword(id, psssword2.toString());
            reslut.put("success",true);
            reslut.put("msg","密码修改成功");
        } catch (Exception e) {
            reslut.put("msg","密码修改失败");
            reslut.put("success",false);
            e.printStackTrace();
        }

        return reslut;
    }

/*    @RequiresPermissions("user:update")
    @RequestMapping(value = "/{id}/changePassword", method = RequestMethod.GET)
    public String showChangePasswordForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("user", userService.findOne(id));
        model.addAttribute("op", "修改密码");
        return "user/changePassword";
    }

    @RequiresPermissions("user:update")
    @RequestMapping(value = "/{id}/changePassword", method = RequestMethod.POST)
    public String changePassword(@PathVariable("id") Long id, String newPassword, RedirectAttributes redirectAttributes) {
        userService.changePassword(id, newPassword);
        redirectAttributes.addFlashAttribute("msg", "修改密码成功");
        return "redirect:/user/list";
    }*/


}
