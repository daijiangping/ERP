package com.nuoplus.system.service;


import com.nuoplus.system.model.InterfaceEntity;
import com.nuoplus.system.service.exception.LoginFailException;
import com.nuoplus.system.service.exception.ValidationException;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 接口服务实现类
 * @author zhangxw
 *
 */
@Service("intfaceServiceImpl")
public class IntfaceServiceImpl extends BaseServiceImpl implements IntfaceService {
	private static final Logger logger = Logger.getLogger(IntfaceServiceImpl.class);
	/**
	 * 根据条件查询单条接口表记录
	 *
	 * @param intfPath
	 *            接入接口的路径
	 * @param rstflReqstMthdNm
	 *            接入接口的REST请求方式
	 * @return 接口实体类
	 * @ throws DataQueryException
	 */
	public InterfaceEntity getInterfaceEntityByPath(String intfPath, String rstflReqstMthdNm) throws ValidationException {

		Map<String, Object> param = new HashMap<String, Object>();
		param.put("intfPath", intfPath);
		param.put("rstflReqstMthdNm", rstflReqstMthdNm);
		InterfaceEntity interfaceEntity = getBaseDao().queryForObject("getInterfaceEntityByParams", param, InterfaceEntity.class);
		if (interfaceEntity == null) {
			throw new ValidationException(
					"请求报文不合法,[" + intfPath + "_" + rstflReqstMthdNm + "]找不到对应的接口数据！");
		}
		return interfaceEntity;
	}


	/**
	 * 根据条件查询单条用户记录
	 * @param userName
	 * 					用户名
	 * @param password
	 * 					密码
	 * @return 接口实体类
	 * @throws Exception
	 */
	public Map<String,Object> getUserByParams(String userName, String password)throws LoginFailException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("userName", userName);
		param.put("password", password);
		Map<String ,Object> user = getBaseDao().queryForObject("getUserByParams", param, Map.class);
		if (user == null) {
			throw new LoginFailException(
					"登录失败,[" + userName + "_" + password + "]找不到对应的用户数据！");
		}
		return user;
	}



	/**
	 * 查询接口表记录
	 * @return 接口实体类
	 * @throws Exception
	 */
	public List<Map<String,Object>> getAllIntfList(Integer start, Integer limit)throws ValidationException{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("start", start);
		param.put("limit", limit);
		return getBaseDao().queryForList("getAllIntfList", param);
	}
	/**
	 * 查询接口表count
	 * @return 接口实体类
	 * @throws Exception
	 */
	public Integer getAllIntfListCount()throws Exception{
		return getBaseDao().queryForObject("getAllIntfListCount", null, Integer.class);
	}
}
