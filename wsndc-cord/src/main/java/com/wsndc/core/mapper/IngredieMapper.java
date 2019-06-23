package com.wsndc.core.mapper;

import com.wsndc.core.bean.Ingredie;
import com.wsndc.core.bean.IngredieExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IngredieMapper {
    int countByExample(IngredieExample example);

    int deleteByExample(IngredieExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Ingredie record);

    int insertSelective(Ingredie record);

    List<Ingredie> selectByExample(IngredieExample example);

    Ingredie selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Ingredie record, @Param("example") IngredieExample example);

    int updateByExample(@Param("record") Ingredie record, @Param("example") IngredieExample example);

    int updateByPrimaryKeySelective(Ingredie record);

    int updateByPrimaryKey(Ingredie record);
}