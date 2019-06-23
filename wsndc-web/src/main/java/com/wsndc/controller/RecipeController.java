package com.wsndc.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wsndc.core.bean.Recipe;
import com.wsndc.core.bean.Recipingredie;
import com.wsndc.core.bean.Step;
import com.wsndc.core.service.RecipeService;
import com.wsndc.core.service.RecipingredieService;
import com.wsndc.core.service.StepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.*;

/**
 * Created by Rainer on 2019/5/10.
 */
@Controller
public class RecipeController {
    @Autowired
    RecipeService service;

    @Autowired
    StepService stepService;

    @Autowired
    RecipingredieService recipingredieService;

    @GetMapping("/recipespag")
    public String getRecipeWithJson(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model){
//        Integer pn1=Integer.getInteger(pn);
        PageHelper.startPage(pn,6);
        List<Recipe> recipes=service.getAll();
        PageInfo page=new PageInfo(recipes,5);
        model.addAttribute("pageInfo",page);
        return "recipe/products";
    }

    @GetMapping("/recipes")
    public String list(Model model){
        Collection<Recipe> recipe = service.getAll();
        model.addAttribute("recipes",recipe);

        return "management/recipelist";
    }

   /* @GetMapping("/recipe/products")
    public String products(Model model){
        Collection<Recipe> recipe = service.getAll();
        model.addAttribute("recipes",recipe);

        return "recipe/products";
    }*/

    @PostMapping("/recipe")
    public String addRecipe(@RequestParam("file")MultipartFile file,Recipe recipe){
        String filePath = "F:\\software\\idea\\workspace\\wsndc\\wsndc-web\\src\\main\\resources\\static\\assert\\proimage\\";
/*        String oldName = file.getOriginalFilename();
        String suffix = oldName.substring(oldName.indexOf('.'));*/
        String name =recipe.getRname()+".jpg";
        File dest=new File(filePath+name);
        Step step=new Step();
        step.setRid(recipe.getId());
        step.setRecipeOrder(1);
        stepService.saveStep(step);
        try {
            file.transferTo(dest);
        } catch (IOException e) {
            e.printStackTrace();
        }

        recipe.setImagepath(recipe.getRname());
        service.saveRecipe(recipe);
        return "redirect:/recipes";
    }

    @RequestMapping(value="/recipe/{id}",method =RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> toEditPage(@PathVariable("id") Integer id){
        HttpSession session=null;
        Map<String,Object> map= new HashMap<>();
        Recipe recipe=service.getRecipe(id);
        map.put("recipe",recipe) ;
        session.setAttribute("recipeId",recipe.getId());
        return map;
    }

    @PutMapping(value="/recipe")
    public String updateUser(Recipe recipe){
        service.updateRecipe(recipe);
        return "redirect:/recipes";
    }

    @DeleteMapping(value="/recipe/{id}")
    public String deleteUser(@PathVariable("id") Integer id){
        System.out.println("id = [" + id + "]");
        service.deleteRecipe(id);
        return "redirect:/recipes";
    }

    /*
    模糊条件查询
     */
    @GetMapping(value="/searchrec/{sb}")
    public String search(@PathVariable("sb") String sb, Model model) throws UnsupportedEncodingException {
        sb= URLDecoder.decode(sb,"UTF-8");
//        Integer sbint=Integer.parseInt(sb);
        Recipe recipe=new Recipe();
//        user.setId(sbint);
//        int a = Integer.parseInt(sb);
//        user.setId(a);
        recipe.setRname(recipe.getRname());
        recipe.setDescription(recipe.getDescription());
        recipe.setImagepath(recipe.getImagepath());
        recipe.setVidepath(recipe.getVidepath());
        Collection<Recipe> recipes=service.selectRecipe(recipe);

        model.addAttribute("recipes",recipes);

        return "management/recipelist";
    }

    @GetMapping(value="/recipe/search/{sb}")
    public String searchInput(@RequestParam(value = "pn",defaultValue = "1")Integer pn,@PathVariable("sb") String sb, Model model) throws UnsupportedEncodingException {
        sb= URLDecoder.decode(sb,"UTF-8");
        Recipe recipe=new Recipe();
        recipe.setRname(sb);
        recipe.setRname(recipe.getRname());
        System.out.println(recipe);
        List<Recipe> recipes=service.selectRecipe(recipe);

        for(Recipe recipe1:recipes){
            System.out.println(recipe1);
        }
        PageHelper.startPage(pn,6);

        PageInfo page=new PageInfo(recipes,5);
        model.addAttribute("pageInfo",page);

        return "recipe/products";
    }


    @GetMapping("/recipe/diet/{id}")
    public String getDiet(@PathVariable("id")Integer id,Model model){
        Recipe recipe = service.getRecipe(id);

        List<Step> steps = stepService.getOrderByRid(id);
        for (int i = 0; i <steps.size() ; i++) {
            System.out.println(steps.get(i));
        }

        List<Recipingredie> recipingredies = recipingredieService.getRecipeIngredieWithXX(id);
        model.addAttribute("steplist",steps);
        model.addAttribute("recipe",recipe);
        model.addAttribute("recing",recipingredies);
        return "recipe/diet";
    }
}
