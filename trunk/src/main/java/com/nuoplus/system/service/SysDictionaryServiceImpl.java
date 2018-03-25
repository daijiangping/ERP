package com.nuoplus.system.service;

import com.nuoplus.system.dao.SysDictionaryMapper;
import com.nuoplus.system.model.SysDictionary;
import com.nuoplus.system.utils.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by Administrator on 2017/5/26 0026.
 */

@Service
public class SysDictionaryServiceImpl implements SysDictionaryService {

    @Resource
    SysDictionaryMapper sysDictionaryMapper;


    public List<SysDictionary> findAll() {
        return sysDictionaryMapper.findAll();
    }

    public Integer countSubOrgByDicId(Long id, String keyword) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id",id);
        map.put("keyword",keyword);
        return sysDictionaryMapper.countSubOrgByDicId(map);
    }

    public List<SysDictionary> findSubOrgByDicId(Long id, String keyword, Pager pager) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("id",id);
        map.put("startRecords",pager.getStartRecords());
        map.put("pageSize",pager.getPageSize());
        map.put("keyword",keyword);
        return sysDictionaryMapper.findSubOrgByDicId(map);
    }

    public SysDictionary findOne(Long id) {
        return sysDictionaryMapper.selectByPrimaryKey(id);
    }

    public int saveDictionary(SysDictionary sysDictionary)throws Exception {

        SysDictionary parent = sysDictionaryMapper.selectByPrimaryKey(sysDictionary.getParentId());
        String parentIds=parent.makeSelfAsParentIds();
        sysDictionary.setParentIds(parentIds);
        sysDictionary.setUid(UUID.randomUUID().toString().replace("-",""));
        return sysDictionaryMapper.insertSelective(sysDictionary);
    }

    public int deleteDictionary(Long id)throws Exception {
        return sysDictionaryMapper.deleteByPrimaryKey(id);
    }

    public int updateDictionary(SysDictionary sysDictionary)throws Exception {
        return sysDictionaryMapper.updateByPrimaryKeySelective(sysDictionary);
    }

    public List<SysDictionary> findByparents(String checkbox) {
        return sysDictionaryMapper.findByparents(checkbox);
    }

    public int batchDel(String checkbox) {
        return sysDictionaryMapper.batchDel(checkbox);
    }

    public List<SysDictionary> findSubOrgByUid(String uid, String keyword) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("uid",uid);
        map.put("keyword",keyword);
        return sysDictionaryMapper.findSubOrgByUid(map);
    }

    @Override
    public List<Map<String, Object>> getDicZtreeSubNodes(Long id) {
        return sysDictionaryMapper.getDicZtreeSubNodes(id);
    }
}
