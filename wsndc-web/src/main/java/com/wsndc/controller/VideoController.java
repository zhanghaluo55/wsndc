package com.wsndc.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wsndc.core.bean.Recipe;
import com.wsndc.core.bean.Recipingredie;
import com.wsndc.core.bean.Video;
import com.wsndc.core.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author xmr
 * @date 2019/5/31 12:12
 * @description
 */
@Controller
public class VideoController {

    @Autowired
    VideoService videoService;

    //查询所有视频信息
    @RequestMapping("/videos")
    public String showVideo(Model model){
        List<Video> list=new ArrayList<>();
               list= videoService.showVideos();
        model.addAttribute("videos",list);//保存列表在request作用域中

        return "management/videolist";
    }

    @RequestMapping(value="/video/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> toEditPage(@PathVariable("id") Integer id){
        Map<String,Object> map= new HashMap<>();
        Video video=videoService.getVideo(id);
        System.out.println(video);
        map.put("video",video) ;
        return map;
    }

    //删除视频
    @DeleteMapping(value = "/video/{id}")
    public String deleteVideos(@PathVariable("id") Integer id){

        videoService.delVideos(id);

            return "redirect:/videos";
    }

    //添加视频
    @PostMapping("/video")
    public String addVideo(Video video){
        videoService.saveVideo(video);
        return "redirect:/videos";
    }

    //修改视频
    @PutMapping(value="/video")
    public String updateVideo(Video video){
        System.out.println(video);
        videoService.updateVideo(video);
        return "redirect:/videos";
    }

    /*
   模糊条件查询
    */
    @GetMapping(value="/searchvideo")
    public String search(Video video,Model model){

        List<Video> list=videoService.selectVideo(video);
        model.addAttribute("videos",list);
        return "redirect:/videos";
    }

    @GetMapping("/video/videolist")
    public String getVideoList(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model){

        PageHelper.startPage(pn,6);
        List<Video> videos=videoService.showVideos();
        PageInfo page=new PageInfo(videos,5);
        model.addAttribute("pageInfo",page);
        return "video/videolists";
    }

    @GetMapping("/video/videoplays/{id}")
    public String getVideoPlay(@PathVariable("id")Integer id,Model model){
        Video video=videoService.getVideo(id);
        model.addAttribute("video",video);
        return "video/videoplay";
    }

    @GetMapping("/video/videoindex")
    public String getVideoIndex(){
        return "video/video";
    }

}
