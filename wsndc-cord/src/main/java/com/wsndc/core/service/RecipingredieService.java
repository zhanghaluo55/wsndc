package com.wsndc.core.service;

import com.wsndc.core.bean.IngredieExample;
import com.wsndc.core.bean.Recipingredie;
import com.wsndc.core.bean.RecipingredieExample;
import com.wsndc.core.bean.Step;
import com.wsndc.core.mapper.RecipingredieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Rainer on 2019/6/9.
 */
@Service
public class RecipingredieService {

    @Autowired
    RecipingredieMapper mapper;
    public List<Recipingredie> getRecipeIngredieByRid(Integer id){
        RecipingredieExample example=new RecipingredieExample();
        RecipingredieExample.Criteria criteria=example.createCriteria();
        criteria.andRidEqualTo(id);

        List<Recipingredie> recipingredies = mapper.selectByExampleWithRecipingredie(example);
        return recipingredies;
    }

    public List<Recipingredie> getRecipeIngredieWithXX(Integer rid){
        List<Recipingredie> recipingredies = mapper.selectByPrimaryKeyWithRecipingredieExample(rid);
        return recipingredies;
    }

}
