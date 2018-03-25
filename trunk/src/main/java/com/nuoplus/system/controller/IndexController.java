package com.nuoplus.system.controller;


import com.nuoplus.system.model.SysUser;
import com.nuoplus.system.service.ResourceService;
import com.nuoplus.system.service.UserService;
import com.nuoplus.system.shiro.CurrentUser;
import com.nuoplus.system.task.QuartzTest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 */
@Controller
public class IndexController  {

   @Resource
    private ResourceService resourceService;
    @Resource
    private UserService userService;

    @RequestMapping("/index")
    public String index(@CurrentUser SysUser loginUser, Model model) {
        System.out.println("=============/=====================");
        return "index";
    }
    @RequestMapping("/")
    public String intss(@CurrentUser SysUser loginUser, Model model) {
/*        Subject currentUser = SecurityUtils.getSubject();

        if(currentUser.isRemembered()){
            String userName = currentUser.getPrincipal().toString();
            Session session = currentUser.getSession();
            Map<String,Object> orgMap = userService.finOrgInfo(userName);
            session.setAttribute("orgMap",orgMap);
        }*/
        System.out.println("=============index=====================");
        return "index";
    }

    @RequestMapping("/welcome")
    public String welcome(Model model) {

        return "welcome";
    }

    @RequestMapping("/menus")
    @ResponseBody
    public  Map<String, Object> menus(@CurrentUser SysUser loginUser) {
        Map<String, Object> result =  new HashMap<String, Object>();
        Map<String, Object> map = new HashMap<String, Object>();
     /*   Set<String> permissions = userService.findPermissions(loginUser.getUsername());*/
        List<Map<String, Object>> menus = resourceService.findMenusByUserId(loginUser.getId());
 /*       Subject subject = SecurityUtils.getSubject();*/
        map.put("list",menus);
        result.put("data",map);
        result.put("status","200");
        return result;
    }
}
