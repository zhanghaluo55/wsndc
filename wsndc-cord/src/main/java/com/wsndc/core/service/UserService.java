package com.wsndc.core.service;

import com.wsndc.core.bean.User;
import com.wsndc.core.bean.UserExample;
import com.wsndc.core.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Rainer on 2019/5/11.
 */
@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public List<User> getAll(){
        UserExample example=new UserExample();
        example.setOrderByClause("id ASC");
        return userMapper.selectByExample(example);
    }

    public void saveUser(User user){
        userMapper.insertSelective(user);
    }

    public User getUser(Integer id){
        User user=userMapper.selectByPrimaryKey(id);
        return user;
    }

    public void updateUser(User user){
        userMapper.updateByPrimaryKeySelective(user);
    }

    public void deleteUser(Integer id){
        userMapper.deleteByPrimaryKey(id);
    }

    /*
    条件查询
     */
    public List<User> selectUser (User user){

        UserExample example=new UserExample();
        UserExample.Criteria criteria=example.createCriteria();
        UserExample.Criteria criteria1=example.createCriteria();
        UserExample.Criteria criteria2=example.createCriteria();
        UserExample.Criteria criteria3=example.createCriteria();
        UserExample.Criteria criteria4=example.createCriteria();
        UserExample.Criteria criteria5=example.createCriteria();

//        if(user.getId()!=null&&!"".equals(user.getId())){
//            criteria.andIdEqualTo(user.getId());
//        }
        System.out.println(user.getUsername());
        if(user.getId()!=null){
            criteria5.andIdEqualTo(user.getId());
            example.or(criteria5);
        }
        if(user.getUsername()!=null){
            criteria.andUsernameLike("%"+user.getUsername()+"%");
            example.or(criteria);
        }
        if(user.getPassword()!=null){
            criteria1.andPasswordLike("%"+user.getPassword()+"%");
            example.or(criteria);
        }
         if(user.getEmail()!=null){
            criteria2.andEmailLike("%"+user.getEmail()+"%");
             example.or(criteria2);
        }
        if(user.getMobile()!=null){
            criteria3.andMobileLike("%"+user.getMobile()+"%");
            example.or(criteria3);
        }
        if(user.getUsertype()!=null){
            criteria4.andUsertypeLike("%"+user.getUsertype()+"%");
            example.or(criteria4);
        }

        List<User> list = userMapper.selectByExample(example);
        return list;
    }

}
