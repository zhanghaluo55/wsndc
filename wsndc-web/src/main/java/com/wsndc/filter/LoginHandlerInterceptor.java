package com.wsndc.filter;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Rainer on 2019/5/12.
 */
public class LoginHandlerInterceptor implements HandlerInterceptor{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object user=request.getSession().getAttribute( "loginUser");
        if(user==null){
            request.setAttribute("msg","没有权限请先登录");
            request.getRequestDispatcher("/management/index.html").forward(request,response);
            return false;
        }else{
            return true;
        }
    }
}
