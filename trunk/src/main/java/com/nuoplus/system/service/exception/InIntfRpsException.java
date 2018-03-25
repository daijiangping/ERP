package com.nuoplus.system.service.exception;

import java.util.Map;

/**
 * 校验自定义异常
 * 
 * @author zhangxw
 *
 */
public class InIntfRpsException extends Exception {

	//异常参数
	public transient Map<String, Object> params;

	private static final long serialVersionUID = 1L;

	public InIntfRpsException() {
		this("返回报文封装失败");
	}

	public InIntfRpsException(String msg) {
		super(msg);
	}

	public InIntfRpsException(Throwable cause) {
		this("返回报文封装失败",cause);
	}

	public InIntfRpsException(String msg, Throwable cause) {
		super(msg,cause);
	}

}
