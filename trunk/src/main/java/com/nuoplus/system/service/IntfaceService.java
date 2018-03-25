package com.nuoplus.system.service;

import com.nuoplus.system.model.InterfaceEntity;
import com.nuoplus.system.service.exception.LoginFailException;
import com.nuoplus.system.service.exception.ValidationException;

import java.util.List;
import java.util.Map;

/**
 * 接口表服务类
 * @author zhangxw
 *
 */
public interface IntfaceService {
	/**
	 * 根据条件查询单条接口表记录
	 * @param intfPath 
	 * 					接入接口的路径
	 * @param rstflReqstMthdNm
	 * 					接入接口的REST请求方式
	 * @return 接口实体类
	 * @throws Exception
	 */
	public InterfaceEntity getInterfaceEntityByPath(String intfPath, String rstflReqstMthdNm)throws ValidationException;


	/**
	 * 根据条件查询单条用户记录
	 * @param userName
	 * 					用户名
	 * @param password
	 * 					密码
	 * @return 接口实体类
	 * @throws Exception
	 */
	public Map<String,Object> getUserByParams(String userName, String password)throws LoginFailException;


	/**
	 * 查询接口表记录
	 * @return 接口实体类
	 * @throws Exception
	 */
	public List<Map<String,Object>> getAllIntfList(Integer start, Integer limit)throws ValidationException;
	/**
	 * 查询接口表count
	 * @return 接口实体类
	 * @throws Exception
	 */
	public Integer getAllIntfListCount()throws Exception;
}
