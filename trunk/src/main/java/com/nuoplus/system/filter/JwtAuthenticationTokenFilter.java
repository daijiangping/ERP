package com.nuoplus.system.filter;

import javax.annotation.Resource;
import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nuoplus.system.service.UserService;
import com.nuoplus.system.utils.JwtTokenUtil;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.util.ThreadContext;
import org.apache.shiro.web.subject.WebSubject;
import org.apache.shiro.web.subject.WebSubject.Builder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.filter.OncePerRequestFilter;
/**
 * Created by Administrator on 2018/2/10 0010.
 */
public class JwtAuthenticationTokenFilter extends OncePerRequestFilter {
    private static final Logger logger = LoggerFactory.getLogger(JwtAuthenticationTokenFilter.class);

    @Resource
    private UserService userService;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
            throws ServletException, IOException {
/*        String tokenHeader = request.getHeader(      .AUTH_TOKEN);//从头部获取JWT字符串信息
        if(logger.isDebugEnabled()) {
            logger.debug("=========>tokenHeader {}", tokenHeader);
        }
        if(StringUtils.isNotBlank(tokenHeader)) {
            Long userId = JwtTokenUtil.getUserIdFromToken(tokenHeader);//解码JWT，获得userid
            if(userId!=null) {
                if (logger.isDebugEnabled()) {
                    logger.debug("getUserIdFromToken userId {}", userId);
                }

                User auser=userService.find(userId);//根据userID获取用户信息
                if(auser!=null) {
                    PrincipalCollection principals = new SimplePrincipalCollection(auser, "UserRealm");//拼装shiro用户信息
                    Builder builder = new WebSubject.Builder(request, response);
                    builder.principals(principals);
                    builder.authenticated(true);
                    WebSubject subject = builder.buildWebSubject();
                    ThreadContext.bind(subject);//塞入容器，统一调用
                }

            }
        }
        chain.doFilter(request, response);*/
    }
}
