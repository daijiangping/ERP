package com.nuoplus.system.service;
import java.util.List;
import java.util.Map;

import com.nuoplus.system.model.PushNodes;
public interface PushNodesService{
	/**
	 * 获得PushNodes数据的总行数
	 * @return
	 */
    long getPushNodesRowCount();
	/**
	 * 获得PushNodes数据集合
	 * @return
	 */
    List<PushNodes> selectPushNodes();
	/**
	 * 获得一个PushNodes对象,以参数PushNodes对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    PushNodes selectPushNodesByObj(PushNodes obj);
	/**
	 * 通过PushNodes的id获得PushNodes对象
	 * @param id
	 * @return
	 */
    PushNodes selectPushNodesById(Object id);
	/**
	 * 插入PushNodes到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertPushNodes(PushNodes value);
	/**
	 * 插入PushNodes中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyPushNodes(PushNodes value);
	/**
	 * 通过PushNodes的id删除PushNodes
	 * @param id
	 * @return
	 */
    int deletePushNodesById(Object id);
	/**
	 * 通过PushNodes的id更新PushNodes中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updatePushNodesById(PushNodes enti);
	/**
	 * 通过PushNodes的id更新PushNodes中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyPushNodesById(PushNodes enti)throws Exception;


	Integer countPushNodes(Map<String, Object> map);

	List<PushNodes> findAll(Map<String, Object> map);
}