package com.nuoplus.system.controller;

import com.nuoplus.system.shiro.NotVerifiedLicenseException;
import com.nuoplus.system.shiro.TimeExpiredLicenseException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 *
 */
@Controller
public class LoginController {

    @RequestMapping(value = "/login"    )
    public String showLoginForm(HttpServletRequest req, Model model) {
        String exceptionClassName = (String)req.getAttribute("shiroLoginFailure");
        String error = null;
        if(UnknownAccountException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        }else if(NotVerifiedLicenseException.class.getName().equals(exceptionClassName)){
            error = "license有误";
        }else if(TimeExpiredLicenseException.class.getName().equals(exceptionClassName)){
            error = "授权文件过期";
        }else if(ExcessiveAttemptsException.class.getName().equals(exceptionClassName)){
            error = "登录失败多次，账户锁定10分钟"; //连续错误5次则锁住账户10分钟
        }else if(LockedAccountException.class.getName().equals(exceptionClassName)){
            error = "该用户已被管理员锁定，请联系管理员";
        }else if(exceptionClassName != null) {
            error = "其他错误：" + exceptionClassName;
        }
        model.addAttribute("error", error);
        return "login";
    }
}
