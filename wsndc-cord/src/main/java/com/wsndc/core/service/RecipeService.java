package com.wsndc.core.service;

import com.wsndc.core.bean.Recipe;
import com.wsndc.core.bean.RecipeExample;
import com.wsndc.core.mapper.RecipeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Rainer on 2019/5/30.
 */
@Service
public class RecipeService {
    @Autowired
    private RecipeMapper recipeMapper;

    public List<Recipe> getAll(){
        RecipeExample example=new RecipeExample();
        example.setOrderByClause("id ASC");
        return recipeMapper.selectByExample(example);
    }

    public void saveRecipe(Recipe recipe){
        recipeMapper.insertSelective(recipe);
    }

    public Recipe getRecipe(Integer id){
        Recipe recipe=recipeMapper.selectByPrimaryKey(id);
        return recipe;
    }

    public void updateRecipe(Recipe recipe){
        recipeMapper.updateByPrimaryKeySelective(recipe);
    }

    public void deleteRecipe(Integer id){
        recipeMapper.deleteByPrimaryKey(id);
    }

    /*
    条件查询
     */
    public List<Recipe> selectRecipe (Recipe recipe){
        RecipeExample example=new RecipeExample();
        RecipeExample.Criteria criteria1=example.createCriteria();
        criteria1.andRnameLike("%"+recipe.getRname()+"%");

        List<Recipe> list = recipeMapper.selectByExample(example);
        return list;
    }
}
