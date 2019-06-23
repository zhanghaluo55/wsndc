package com.wsndc.core.mapper;

import com.wsndc.core.bean.Recipe;
import com.wsndc.core.bean.RecipeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RecipeMapper {
    int countByExample(RecipeExample example);

    int deleteByExample(RecipeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Recipe record);

    int insertSelective(Recipe record);

    List<Recipe> selectByExample(RecipeExample example);

    Recipe selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Recipe record, @Param("example") RecipeExample example);

    int updateByExample(@Param("record") Recipe record, @Param("example") RecipeExample example);

    int updateByPrimaryKeySelective(Recipe record);

    int updateByPrimaryKey(Recipe record);
}