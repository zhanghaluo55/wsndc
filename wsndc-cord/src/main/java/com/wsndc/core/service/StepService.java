package com.wsndc.core.service;

import com.wsndc.core.bean.Step;
import com.wsndc.core.bean.StepExample;
import com.wsndc.core.mapper.StepMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Rainer on 2019/5/11.
 */
@Service
public class StepService {

    @Autowired
    private StepMapper stepMapper;


    public List<Step> getAll(){
        StepExample example=new StepExample();
        example.setOrderByClause("id ASC");
        return stepMapper.selectByExample(example);
    }

    public void saveStep(Step step){
        stepMapper.insertSelective(step);
    }

    public Step getStep(Integer id){
        Step step=stepMapper.selectByPrimaryKey(id);
        return step;
    }

    public void updateStep(Step step){
        stepMapper.updateByPrimaryKeySelective(step);
    }

    public void deleteStep(Integer id){
        stepMapper.deleteByPrimaryKey(id);
    }

    /*
    条件查询
     */
    public List<Step> selectStep (Step step){

        StepExample example=new StepExample();
        StepExample.Criteria criteria=example.createCriteria();
        StepExample.Criteria criteria1=example.createCriteria();
        StepExample.Criteria criteria2=example.createCriteria();

//        if(user.getId()!=null&&!"".equals(user.getId())){
//            criteria.andIdEqualTo(user.getId());
//        }
        if(step.getId()!=null){
            criteria.andIdEqualTo(step.getId());
            example.or(criteria);
        }
        if(step.getRecipeOrder()!=null){
            criteria1.andRecipeOrderEqualTo(step.getRecipeOrder());
            example.or(criteria1);
        }
        if(step.getProcess()!=null){
            criteria2.andProcessLike("%"+step.getProcess()+"%");
            example.or(criteria2);
        }
        
        List<Step> list = stepMapper.selectByExample(example);
        return list;
    }
    
    public Integer getOrderNum(Integer id){
        StepExample example=new StepExample();
        StepExample.Criteria criteria = example.createCriteria();
        criteria.andRidEqualTo(id);
        List<Step> steps = stepMapper.selectByExample(example);
        Integer i = steps.size();
        return i;
    }

    public List<Step> getOrderByRid(Integer id){
        StepExample example=new StepExample();
        StepExample.Criteria criteria = example.createCriteria();
        criteria.andRidEqualTo(id);
        List<Step> steps = stepMapper.selectByExample(example);
        return steps;
    }

    public List<Step> selectByRid(Integer rid,Integer order){
        StepExample example=new StepExample();
        StepExample.Criteria criteria = example.createCriteria();
        criteria.andRidEqualTo(rid);
        criteria.andRecipeOrderEqualTo(order);
        return stepMapper.selectByExample(example);
    }

    public void deleteByRid(Integer rid,Integer order){
        StepExample example=new StepExample();
        StepExample.Criteria criteria = example.createCriteria();
        criteria.andRidEqualTo(rid);
        criteria.andRecipeOrderEqualTo(order);
        stepMapper.deleteByExample(example);
    }
}
