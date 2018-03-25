/**
 * @Project: rbac
 * @FileName: IncorrectCaptchaException.java
 * @Package: com.rayous.web.shiro
 * @Description: RBAC
 * @Author: HaiZheng
 * @Date: 2016年4月11日 下午4:46:51
 * @Version: V0.1
 */
package com.nuoplus.system.shiro;

import org.apache.shiro.authc.AuthenticationException;

/**
 * @TypeName: IncorrectCaptchaException
 * @Description: RBAC
 * @Author: HaiZheng
 * @Date: 2016年4月11日 下午4:46:51
 * 
 */
public class NotVerifiedLicenseException extends AuthenticationException {
	
	public NotVerifiedLicenseException() {
		super();
	}

	public NotVerifiedLicenseException(String message, Throwable cause) {
		super(message, cause);
	}

	public NotVerifiedLicenseException(String message) {
		super(message);
	}

	public NotVerifiedLicenseException(Throwable cause) {
		super(cause);
	}

}
