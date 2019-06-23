package com.wsndc.core.service;

import com.wsndc.core.bean.Ingredie;
import com.wsndc.core.bean.IngredieExample;
import com.wsndc.core.bean.Step;
import com.wsndc.core.bean.StepExample;
import com.wsndc.core.mapper.IngredieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Rainer on 2019/5/11.
 */

@Service
public class IngredieService{

    @Autowired
    IngredieMapper ingredieMapper;

    //查询食材列表
    public List<Ingredie> showIngredies() {

        IngredieExample exampled=new IngredieExample();
        exampled.setOrderByClause("id ASC");
        List<Ingredie> ingredies =ingredieMapper.selectByExample(exampled);

        return ingredies;
    }

    //通过id查询一个食材
    public Ingredie getIngredie(Integer id){
        return ingredieMapper.selectByPrimaryKey(id);

    }

    //删除食材
    public void delIngredie(int id){
        ingredieMapper.deleteByPrimaryKey(id);
    }

    //增加食材
    public void saveIngredie(Ingredie ingredie){
        ingredieMapper.insertSelective(ingredie);
    }

    //修改食材
    public void updateIngredie(Ingredie ingredie){

        ingredieMapper.updateByPrimaryKeySelective(ingredie);
    }

    /*
    条件查询
     */
    public List<Ingredie> selectIngredie(Ingredie ingredie){
        IngredieExample example=new IngredieExample();
        IngredieExample.Criteria criteria=example.createCriteria();

        if(ingredie.getId()!=null&&!"".equals(ingredie.getId())){
            criteria.andIdEqualTo(ingredie.getId());
        }
        if(ingredie.getIname()!=null&&!"".equals(ingredie.getIname())){
            criteria.andInameLike("%"+ingredie.getIname()+"%");
        }

        if(ingredie.getDescription()!=null&&!"".equals(ingredie.getDescription())){
            criteria.andDescriptionLike("%"+ingredie.getDescription()+"%");
        }
//        if(video.getDate()!=null&&!"".equals(video.getDate())){
//            criteria.andDateLike("%"+video.getDate()+"%");
//        }
        List<Ingredie> ing = ingredieMapper.selectByExample(example);
        return ing;
    }


}
