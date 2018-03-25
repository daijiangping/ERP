package com.nuoplus.system.service;
import java.util.List;
import java.util.Map;

import com.nuoplus.system.dao.PushNodesMapper;
import com.nuoplus.system.model.PushNodes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PushNodesServiceImpl implements PushNodesService{
    @Resource
    private PushNodesMapper pushNodesMapper;

    @Override
    public long getPushNodesRowCount(){
        return pushNodesMapper.getPushNodesRowCount();
    }
    @Override
    public List<PushNodes> selectPushNodes(){
        return pushNodesMapper.selectPushNodes();
    }
    @Override
    public PushNodes selectPushNodesByObj(PushNodes obj){
        return pushNodesMapper.selectPushNodesByObj(obj);
    }
    @Override
    public PushNodes selectPushNodesById(Object id){
        return pushNodesMapper.selectPushNodesById(id);
    }
    @Override
    public int insertPushNodes(PushNodes value){
        return pushNodesMapper.insertPushNodes(value);
    }
    @Override
    public int insertNonEmptyPushNodes(PushNodes value){
        return pushNodesMapper.insertNonEmptyPushNodes(value);
    }
    @Override
    public int deletePushNodesById(Object id){
        return pushNodesMapper.deletePushNodesById(id);
    }
    @Override
    public int updatePushNodesById(PushNodes enti){
        return pushNodesMapper.updatePushNodesById(enti);
    }
    @Override
    public int updateNonEmptyPushNodesById(PushNodes enti)throws Exception{
        return pushNodesMapper.updateNonEmptyPushNodesById(enti);
    }

    @Override
    public Integer countPushNodes(Map<String, Object> map) {
        return pushNodesMapper.countPushNodes(map);
    }

    @Override
    public List<PushNodes> findAll(Map<String, Object> map) {
        return pushNodesMapper.findAll(map);
    }

    public PushNodesMapper getPushNodesMapper() {
        return this.pushNodesMapper;
    }

    public void setPushNodesMapper(PushNodesMapper pushNodesMapper) {
        this.pushNodesMapper = pushNodesMapper;
    }

}