package com.nuoplus.system.shiro;

import org.apache.shiro.authc.AuthenticationException;

/**
 * Created by Administrator on 2017/5/22 0022.
 */
public class TimeExpiredLicenseException extends AuthenticationException {
    public TimeExpiredLicenseException() {
        super();
    }

    public TimeExpiredLicenseException(String message, Throwable cause) {
        super(message, cause);
    }

    public TimeExpiredLicenseException(String message) {
        super(message);
    }

    public TimeExpiredLicenseException(Throwable cause) {
        super(cause);
    }
}
