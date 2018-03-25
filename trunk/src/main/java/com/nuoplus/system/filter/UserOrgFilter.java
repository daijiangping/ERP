package com.nuoplus.system.filter;

import com.nuoplus.system.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.servlet.OncePerRequestFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;
import java.util.Map;

/**
 * Created by wyp on 2017/11/30 0030.
 * shiro  rember登录状态下session失效时 用于恢复用户信息session
 */
public class UserOrgFilter extends OncePerRequestFilter {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private UserService userService;

    protected void doFilterInternal(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException {

        Subject currentUser = SecurityUtils.getSubject();
        String userName = currentUser.getPrincipal().toString();
        System.out.println("当前登录状态:"+currentUser.isAuthenticated());
        if(currentUser.isRemembered()&&!userName.equals("admin")){
            Session session = currentUser.getSession();
            Map<String,Object> qyMap = userService.finQyInfo(userName);
            session.setAttribute("qyMap",qyMap);
            logger.info("添加登录用户 to session: " + qyMap);
        }
        if(!currentUser.isAuthenticated()){

        }
/*        if(!currentUser.isAuthenticated() && currentUser.isRemembered()){
            SysUser user = userService.findByUsername(userName);
            currentUser.login(new UsernamePasswordToken(userName,user.getPassword(), true,
                    "127.0.0.1"));

            Session session = currentUser.getSession(false);
            session.setAttribute(Constants.CURRENT_USER, user);
        }*/
        filterChain.doFilter(servletRequest, servletResponse);
    }
}




