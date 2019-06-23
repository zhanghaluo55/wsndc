package com.wsndc.core.mapper;

import com.wsndc.core.bean.Commentreply;
import com.wsndc.core.bean.CommentreplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommentreplyMapper {
    int countByExample(CommentreplyExample example);

    int deleteByExample(CommentreplyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Commentreply record);

    int insertSelective(Commentreply record);

    List<Commentreply> selectByExample(CommentreplyExample example);

    Commentreply selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Commentreply record, @Param("example") CommentreplyExample example);

    int updateByExample(@Param("record") Commentreply record, @Param("example") CommentreplyExample example);

    int updateByPrimaryKeySelective(Commentreply record);

    int updateByPrimaryKey(Commentreply record);
}