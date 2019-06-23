package com.wsndc.config;

import com.wsndc.filter.LoginHandlerInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Created by Rainer on 2019/5/11.
 */
//@EnableWebMvc
@Configuration
public class MyMvcConfig implements WebMvcConfigurer{

    public void addViewControllers(ViewControllerRegistry registry){
        registry.addViewController("/management/login").setViewName("/management/login");
        registry.addViewController("/management").setViewName("/management/login");
        registry.addViewController("/management/index.html").setViewName("/management/login");
        registry.addViewController("/management/main").setViewName("/management/index");
        registry.addViewController("/management/main.html").setViewName("/management/index");
        registry.addViewController("/management/index_v3.html").setViewName("/management/index_v3");
        registry.addViewController("/management/userlist").setViewName("/management/userlist");
        registry.addViewController("/management/videolist").setViewName("/management/videolist");
        registry.addViewController("/management/ingredielist").setViewName("/management/ingredielist");
        registry.addViewController("/management/recipelist").setViewName("/management/recipelist");
        registry.addViewController("/management/stepadd").setViewName("/management/stepadd");

        registry.addViewController("/").setViewName("index");
        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/index.html").setViewName("index");

        registry.addViewController("/recipe/products").setViewName("/recipe/products");
        registry.addViewController("/recipe/products.html").setViewName("/recipe/products");
        registry.addViewController("/recipe/diet").setViewName("/recipe/diet");
        registry.addViewController("/recipe/diet.html").setViewName("/recipe/diet");

        registry.addViewController("/video/video").setViewName("/video/video");
        registry.addViewController("/video/videolists").setViewName("/video/videolists");
        registry.addViewController("/video/videoplay").setViewName("/video/videoplay");
    }

    //注册拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginHandlerInterceptor()).addPathPatterns("/management/**").excludePathPatterns("/management","/management/index.html","/user/login","/static/**","/static/assert");
    }

    /*   @Bean
    public WebMvcConfigurationSupport webMvcConfigurationSupport(){
        WebMvcConfigurationSupport support=new WebMvcConfigurationSupport(){
            public void addViewControllers(ViewControllerRegistry registry){
                registry.addViewController("/").setViewName("login");
                registry.addViewController("/index.html").setViewName("login");
                registry.addViewController("main").setViewName("index");
                registry.addViewController("main.html").setViewName("index");
            }
        };
        return support;
    }*/
}
