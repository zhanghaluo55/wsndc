package com.wsndc.core.service;

import com.wsndc.core.bean.Video;
import com.wsndc.core.bean.VideoExample;
import com.wsndc.core.mapper.VideoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author xmr
 * @date 2019/5/31 11:47
 * @description
 */
@Service
public class VideoService {

    @Autowired
    VideoMapper videoMapper;

    //查询视频列表
    public List<Video> showVideos() {

        VideoExample exampled=new VideoExample();
        exampled.setOrderByClause("id ASC");
        List<Video> videos = videoMapper.selectByExample(exampled);

        return videos;
    }

    //通过id查询一个视频
    public Video getVideo(Integer id){
        Video video=videoMapper.selectByPrimaryKey(id);
        return video;
    }

    //删除视频
    public void delVideos(int id){
        videoMapper.deleteByPrimaryKey(id);
    }

    //增加视频
    public void saveVideo(Video video){
        videoMapper.insertSelective(video);
    }

    //修改视频
    public void updateVideo(Video video){

        videoMapper.updateByPrimaryKeySelective(video);
    }

    /*
    条件查询
     */
    public List<Video> selectVideo (Video video){
        VideoExample example=new VideoExample();
       VideoExample.Criteria criteria=example.createCriteria();

        if(video.getId()!=null&&!"".equals(video.getId())){
            criteria.andIdEqualTo(video.getId());
        }
        if(video.getTitle()!=null&&!"".equals(video.getTitle())){
            criteria.andTitleLike("%"+video.getTitle()+"%");
        }
        if(video.getState()!=null&&!"".equals(video.getState())){
            criteria.andStateLike("%"+video.getState()+"%");
        }

//        if(video.getUid()!=null&&!"".equals(video.getUid())){
//            criteria.andUidLike("%"+video.getUid()+"%");
//        }
//        if(video.getDate()!=null&&!"".equals(video.getDate())){
//            criteria.andDateLike("%"+video.getDate()+"%");
//        }
        List<Video> list = videoMapper.selectByExample(example);
        return list;
    }
}
