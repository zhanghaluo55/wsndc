package com.wsndc.core.mapper;

import com.wsndc.core.bean.Vtag;
import com.wsndc.core.bean.VtagExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VtagMapper {
    int countByExample(VtagExample example);

    int deleteByExample(VtagExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Vtag record);

    int insertSelective(Vtag record);

    List<Vtag> selectByExample(VtagExample example);

    Vtag selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Vtag record, @Param("example") VtagExample example);

    int updateByExample(@Param("record") Vtag record, @Param("example") VtagExample example);

    int updateByPrimaryKeySelective(Vtag record);

    int updateByPrimaryKey(Vtag record);
}