package com.nuoplus.system.filter;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.servlet.OncePerRequestFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import java.io.IOException;

/**
 * Created by wyp on 2017/11/30 0030.
 *
 * 账号登录状态下访问登录页面则自动跳转index
 */
public class AutoForwordFilter extends OncePerRequestFilter {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    protected void doFilterInternal(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        Subject currentUser = SecurityUtils.getSubject();
        if (currentUser.isAuthenticated()) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/index");
            dispatcher .forward(request, response);
            logger.info("自动跳转登录页面");
        }
        chain.doFilter(request, response);
   }
}