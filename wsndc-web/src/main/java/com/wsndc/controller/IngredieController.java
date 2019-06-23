package com.wsndc.controller;



import com.wsndc.core.bean.Ingredie;
import com.wsndc.core.bean.Recipe;
import com.wsndc.core.bean.Recipingredie;
import com.wsndc.core.bean.Step;
import com.wsndc.core.service.IngredieService;
import com.wsndc.core.service.RecipingredieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author xmr
 * @date 2019/5/31 23:09
 * @description
 */

@Controller
public class IngredieController {

    @Autowired
    IngredieService ingredieService;

    @Autowired
    RecipingredieService riservice;
    //查询所有食材信息
    @RequestMapping("/ingredies")
    public String showIngredie(Model model){
        List<Ingredie> list=ingredieService.showIngredies();
        model.addAttribute("ingredies",list);//保存列表在request作用域中

        return "management/ingredielist";
    }

    @RequestMapping(value="/ingredie/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> toEditPage(@PathVariable("id") Integer id){
        Map<String,Object> map= new HashMap<>();
        Ingredie ingredie=ingredieService.getIngredie(id);
        System.out.println(ingredie);
        map.put("ingredie",ingredie) ;
        return map;
    }

    //删除食材
    @DeleteMapping(value = "/ingredie/{id}")
    public String deleteIngredie(@PathVariable("id") Integer id){

        ingredieService.delIngredie(id);

        return "redirect:/ingredies";
    }

    //添加食材
    @PostMapping("/ingredie")
    public String addIngredie(Ingredie ingredie){
        ingredieService.saveIngredie(ingredie);
        return "redirect:/ingredies";
    }

    //修改食材
    @PutMapping(value="/indregie")
    public String updateIngredie(Ingredie ingredie){
        System.out.println(ingredie);
        ingredieService.updateIngredie(ingredie);
        return "redirect:/ingredies";
    }

    /*
   模糊条件查询
    */
    @GetMapping(value="/ingrediesearch")
    public String search(Ingredie ingredie, Model model){

        List<Ingredie> list=ingredieService.selectIngredie(ingredie);
        model.addAttribute("ingredies",list);
        return "redirect:/ingredies";
    }

    @RequestMapping("/ingredie/ingredieadd")
    public String allIngredie(Model model){
        List<Ingredie> list=ingredieService.showIngredies();
        model.addAttribute("ingredies",list);//保存列表在request作用域中

        return "management/ingredieadd";
    }

    @GetMapping("/ingredie/edit/{id}")
    public String toEdit(@PathVariable("id")Integer id, Model model, HttpSession session){

        List<Recipingredie> recingredies = riservice.getRecipeIngredieWithXX(id);
        session.setAttribute("recingredies",recingredies);

        if(recingredies.size()!=0){
            model.addAttribute("steps",recingredies);
        }
        return "management/stepadd";
    }
}
