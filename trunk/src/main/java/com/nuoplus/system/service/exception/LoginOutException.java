package com.nuoplus.system.service.exception;

import java.util.Map;

/**
 * 校验自定义异常
 * 
 * @author zhangxw
 *
 */
public class LoginOutException extends Exception {

	//异常参数
	public transient Map<String, Object> params;

	private static final long serialVersionUID = 1L;

	public LoginOutException() {
		this("登录超时，请重新登录");
	}

	public LoginOutException(String msg) {
		super(msg);
	}

	public LoginOutException(Throwable cause) {
		this("登录超时，请重新登录",cause);
	}

	public LoginOutException(String msg, Throwable cause) {
		super(msg,cause);
	}

}
