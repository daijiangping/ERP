package com.nuoplus.system.service.exception;

import java.util.Map;

/**
 * 校验自定义异常
 * 
 * @author zhangxw
 *
 */
public class LoginFailException extends Exception {

	//异常参数
	public transient Map<String, Object> params;

	private static final long serialVersionUID = 1L;

	public LoginFailException() {
		this("登录失败");
	}

	public LoginFailException(String msg) {
		super(msg);
	}

	public LoginFailException(Throwable cause) {
		this("登录失败",cause);
	}

	public LoginFailException(String msg, Throwable cause) {
		super(msg,cause);
	}

}
