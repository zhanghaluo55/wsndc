package com.wsndc.core.mapper;

import com.wsndc.core.bean.Post;
import com.wsndc.core.bean.PostExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostMapper {
    int countByExample(PostExample example);

    int deleteByExample(PostExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Post record);

    int insertSelective(Post record);

    List<Post> selectByExample(PostExample example);

    Post selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Post record, @Param("example") PostExample example);

    int updateByExample(@Param("record") Post record, @Param("example") PostExample example);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKey(Post record);
}