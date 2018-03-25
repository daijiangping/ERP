package com.nuoplus.system.service;

import com.nuoplus.system.model.SysDictionary;
import com.nuoplus.system.utils.Pager;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/26 0026.
 */
public interface SysDictionaryService {
    /**
     * 所有词条信息
     * @return
     */
    public List<SysDictionary> findAll();

    /**
     * 统计该节点下词条数量
     * @param id
     * @return
     * @throws Exception
     */
    Integer countSubOrgByDicId(Long id, String keyword) throws Exception;

    /**
     * 查找该节点下所有词条
     * @param id
     * @param keyword
     *@param pager  @return
     * @throws Exception
     */

    List<SysDictionary> findSubOrgByDicId(Long id, String keyword, Pager pager)throws Exception;

    /**
     * 根据id查找当前节点
     * @param id
     * @return
     */
    SysDictionary findOne(Long id);

    /**
     * 新增词条
     * @param sysDictionary
     * @return
     */
    int saveDictionary(SysDictionary sysDictionary)throws Exception;

    int deleteDictionary(Long id)throws Exception;

    int updateDictionary(SysDictionary sysDictionary)throws Exception;

    List<SysDictionary> findByparents(String checkbox);

    int batchDel(String checkbox);

    List<SysDictionary> findSubOrgByUid(String uid, String keyword)throws Exception;

    List<Map<String,Object>> getDicZtreeSubNodes(Long id);
}
