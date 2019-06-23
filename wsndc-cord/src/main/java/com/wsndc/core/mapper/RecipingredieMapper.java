package com.wsndc.core.mapper;

import com.wsndc.core.bean.Recipingredie;
import com.wsndc.core.bean.RecipingredieExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RecipingredieMapper {
    int countByExample(RecipingredieExample example);

    int deleteByExample(RecipingredieExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Recipingredie record);

    int insertSelective(Recipingredie record);

    List<Recipingredie> selectByExample(RecipingredieExample example);

    Recipingredie selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Recipingredie record, @Param("example") RecipingredieExample example);

    int updateByExample(@Param("record") Recipingredie record, @Param("example") RecipingredieExample example);

    int updateByPrimaryKeySelective(Recipingredie record);

    int updateByPrimaryKey(Recipingredie record);

    List<Recipingredie> selectByExampleWithRecipingredie(@Param("example") RecipingredieExample example);

    List<Recipingredie> selectByPrimaryKeyWithRecipingredieExample(@Param("rid") Integer rid);

}