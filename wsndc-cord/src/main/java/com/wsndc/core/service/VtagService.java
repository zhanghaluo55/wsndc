package com.wsndc.core.service;
import com.wsndc.core.bean.Vtag;
import com.wsndc.core.bean.VtagExample;
import com.wsndc.core.mapper.VtagMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author xmr
 * @date 2019/5/31 21:50
 * @description
 */

@Service
public class VtagService {

    @Autowired
    VtagMapper vtagMapper;

    //查询视频列表
    public List<Vtag> showVtag() {

        VtagExample exampled=new VtagExample();
        exampled.setOrderByClause("id ASC");
        List<Vtag> vtags = vtagMapper.selectByExample(exampled);

        return vtags;
    }

    //通过id查询一个视频
    public Vtag getVtag(Integer id){
        Vtag vtag=vtagMapper.selectByPrimaryKey(id);
        return vtag;
    }

    //删除视频
    public void delVtag(int id){
        vtagMapper.deleteByPrimaryKey(id);
    }

    //增加视频
    public void saveVideo(Vtag vtag){
        vtagMapper.insertSelective(vtag);
    }

    //修改视频标签
    public void updateVtag(Vtag vtag){

        vtagMapper.updateByPrimaryKeySelective(vtag);
    }
}
