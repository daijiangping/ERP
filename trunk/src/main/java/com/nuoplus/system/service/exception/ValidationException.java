package com.nuoplus.system.service.exception;

import java.util.Map;

/**
 * 校验自定义异常
 * 
 * @author zhangxw
 *
 */
public class ValidationException extends Exception {
	
	//异常参数
	public transient Map<String, Object> params;

	private static final long serialVersionUID = 1L;

	public ValidationException() {
		this("请求参数不合法");
	}

	public ValidationException(String msg) {
		super(msg);
	}

	public ValidationException(Throwable cause) {
		this("请求参数不合法",cause);
	}

	public ValidationException(String msg, Throwable cause) {
		super(msg,cause);
	}

}
