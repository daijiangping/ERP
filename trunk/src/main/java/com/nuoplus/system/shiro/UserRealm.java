package com.nuoplus.system.shiro;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.nuoplus.license.LicenseCheck;
import com.nuoplus.system.SystemUtil;
import com.nuoplus.system.model.SysUser;
import com.nuoplus.system.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;
import java.io.File;
import java.util.List;
import java.util.Map;

/***
 *  登录以及权限验证
 */
public class UserRealm extends AuthorizingRealm implements ServletContextAware{

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    private String licensePath;
    private String cerPath;
    @Autowired
    private UserService userService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        //授权
        String username = (String)principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(userService.findRoles(username));
        authorizationInfo.setStringPermissions(userService.findPermissions(username));
        logger.info("验证用户:"+username+"权限:");
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
      //身份验证
        String username = (String)token.getPrincipal();
        System.out.println("登录用户："+username);
        SysUser user = userService.findByUsername(username);

        if(user == null) {
            throw new UnknownAccountException();//没找到帐号
        }

        if(Boolean.FALSE.equals(user.getLocked())) {
            throw new LockedAccountException(); //帐号锁定
        }
        //license验证开始
        LicenseCheck  licenseCheck = new LicenseCheck();
        String declassify = null;
        try {
            declassify = licenseCheck.declassify(licensePath, cerPath);
        } catch (Exception e) {
            System.out.println("declassify:::"+declassify);
            e.printStackTrace();
            throw new NotVerifiedLicenseException();
        }
        JSONObject jsonObject = JSON.parseObject(declassify);
        List<String> mac = SystemUtil.getMAC();

        if (!mac.contains(jsonObject.getString("mac"))) {
            throw new NotVerifiedLicenseException();
        }
        if (jsonObject.getDate("eTime").getTime() < System.currentTimeMillis()){
            throw new TimeExpiredLicenseException();
        }
        //交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配，
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                user.getUsername(), //用户名
                user.getPassword(), //密码
                ByteSource.Util.bytes(user.getCredentialsSalt()),//salt=username+salt
                getName()  //realm name
        );
/*        if (!username.equals("admin")){
            Subject currentUser = SecurityUtils.getSubject();
            Session session = currentUser.getSession();
            Map<String,Object> qyMap = userService.finQyInfo(user.getUsername());
            session.setAttribute("qyMap",qyMap);
        }*/
        return authenticationInfo;
    }

    @Override
    public void clearCachedAuthorizationInfo(PrincipalCollection principals) {
        super.clearCachedAuthorizationInfo(principals);
    }

    @Override
    public void clearCachedAuthenticationInfo(PrincipalCollection principals) {
        super.clearCachedAuthenticationInfo(principals);
    }

    @Override
    public void clearCache(PrincipalCollection principals) {
        super.clearCache(principals);
    }

    public void clearAllCachedAuthorizationInfo() {
        getAuthorizationCache().clear();
    }

    public void clearAllCachedAuthenticationInfo() {
        getAuthenticationCache().clear();
    }

    public void clearAllCache() {
        clearAllCachedAuthenticationInfo();
        clearAllCachedAuthorizationInfo();
    }

    public void setServletContext(ServletContext servletContext) {
        String license = servletContext.getRealPath("/license");


        File file = new File(license);
        File[] files = file.listFiles();
        for (File tempFile : files) {
            String fileName = tempFile.getName();
            if(fileName.endsWith(".license")){
                licensePath = license + "/"+fileName;

            }else if(fileName.endsWith(".cer")){
                cerPath = license+"/"+fileName;
            }
        }
    }
}
