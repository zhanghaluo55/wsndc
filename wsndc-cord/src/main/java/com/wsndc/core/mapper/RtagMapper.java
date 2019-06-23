package com.wsndc.core.mapper;

import com.wsndc.core.bean.Rtag;
import com.wsndc.core.bean.RtagExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RtagMapper {
    int countByExample(RtagExample example);

    int deleteByExample(RtagExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Rtag record);

    int insertSelective(Rtag record);

    List<Rtag> selectByExample(RtagExample example);

    Rtag selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Rtag record, @Param("example") RtagExample example);

    int updateByExample(@Param("record") Rtag record, @Param("example") RtagExample example);

    int updateByPrimaryKeySelective(Rtag record);

    int updateByPrimaryKey(Rtag record);
}