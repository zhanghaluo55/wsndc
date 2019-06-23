package com.wsndc.controller;


import com.wsndc.core.bean.User;
import com.wsndc.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Collection;
import java.util.HashMap;

import java.util.Map;

/**
 * Created by Rainer on 2019/5/12.
 */
@Controller
public class UserController {
    @Autowired
    UserService service;

    @PostMapping(value = "user/login")
    public String login(@RequestParam("uname") String uname,
                        @RequestParam("pword") String pword,
                        Map<String,Object> map, HttpSession session){
        if(!StringUtils.isEmpty(uname)&&"123456".equals(pword)){
            session.setAttribute("loginUser",uname);
            return "redirect:/management/main";
        }else{
            map.put("msg","用户名密码错误");
            return "/management/login";
        }
    }

    @GetMapping("/users")
    public String list(Model model){
        Collection<User> users = service.getAll();
        model.addAttribute("users",users);

        return "management/userlist";
}

    @PostMapping("/user")
    public String addUser(User user){
        service.saveUser(user);
        return "redirect:/users";
    }

    @RequestMapping(value="/user/{id}",method =RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> toEditPage(@PathVariable("id") Integer id){
        Map<String,Object> map= new HashMap<>();
        User user=service.getUser(id);
        System.out.println(user);
        map.put("user",user) ;
        return map;
    }

    @PutMapping(value="/user")
    public String updateUser(User user){
        System.out.println(user);
        service.updateUser(user);
        return "redirect:/users";
    }

    @DeleteMapping(value="/user/{id}")
    public String deleteUser(@PathVariable("id") Integer id){
        System.out.println("id = [" + id + "]");
        service.deleteUser(id);
        return "redirect:/users";
    }

    /*
    模糊条件查询
     */
    @GetMapping(value="/searchuser/{sb}")
    public String search(@PathVariable("sb") String sb,Model model) throws UnsupportedEncodingException {
        sb= URLDecoder.decode(sb,"UTF-8");
//        Integer sbint=Integer.parseInt(sb);
        User user=new User();
//        user.setId(sbint);
//        int a = Integer.parseInt(sb);
//        user.setId(a);
        user.setEmail(sb);
        user.setMobile(sb);
        user.setUsername(sb);
        user.setPassword(sb);
        user.setUsertype(sb);
        System.out.println(user);
        Collection<User> users=service.selectUser(user);

        model.addAttribute("users",users);
        System.out.println(users.isEmpty());
        return "management/userlist";
    }



}
