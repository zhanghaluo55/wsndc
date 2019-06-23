package com.wsndc.core.mapper;

import com.wsndc.core.bean.Ptag;
import com.wsndc.core.bean.PtagExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PtagMapper {
    int countByExample(PtagExample example);

    int deleteByExample(PtagExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Ptag record);

    int insertSelective(Ptag record);

    List<Ptag> selectByExample(PtagExample example);

    Ptag selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Ptag record, @Param("example") PtagExample example);

    int updateByExample(@Param("record") Ptag record, @Param("example") PtagExample example);

    int updateByPrimaryKeySelective(Ptag record);

    int updateByPrimaryKey(Ptag record);
}