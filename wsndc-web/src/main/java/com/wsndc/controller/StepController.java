package com.wsndc.controller;

import com.wsndc.core.bean.Recipe;
import com.wsndc.core.bean.Step;
import com.wsndc.core.bean.StepList;
import com.wsndc.core.service.RecipeService;
import com.wsndc.core.service.StepService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by Rainer on 2019/6/4.
 */
@Controller
public class StepController {
    @Autowired
    StepService service;
    @Autowired
    RecipeService recipeService;
    @GetMapping("/step/{id}")
    public String getStep(@PathVariable("id")Integer id, Model model){
        List<Step> list = service.getAll();
        model.addAttribute("steps",list);
        return "management/stepadd";
    }

    @PostMapping("/step")
    public String addStep(@RequestParam("files")MultipartFile[] files, StepList list, HttpSession session) {

        Recipe recipe=(Recipe) session.getAttribute("recipe");
     /*   System.out.println(recipe);
        List<Step> list = (List<Step>) map.get("list");

        List<MultipartFile> filelist= (List<MultipartFile>) map.get("filelist");*/

        System.out.println(list.getStep().get(0));
        System.out.println(list.getStep().get(1));
        String filePath = "F:\\software\\idea\\workspace\\wsndc\\wsndc-web\\src\\main\\resources\\static\\assert\\proimage\\";
        for(int i=0;i<files.length;i++){
            int j=i+1;
            String name=recipe.getRname()+j+".jpg";

            File dest=new File(filePath+name);
            try {
                files[i].transferTo(dest);
            } catch (IOException e) {
                e.printStackTrace();
            }

        }

        Integer recipeId = recipe.getId();
        Integer old_num = service.getOrderNum(recipeId);
        System.out.println(list.getStep().size());
        System.out.println(old_num);
        int flag = list.getStep().size() - old_num;
        int size=list.getStep().size();

        if (flag < 0&&old_num!=0) {
            for (int i = 0; i < list.getStep().size(); i++) {
                list.getStep().get(i).setRid(recipeId);
                list.getStep().get(i).setRecipeOrder(i+1);
                list.getStep().get(i).setImagepath(recipeService.getRecipe(recipeId).getImagepath());
                Integer s_id=service.selectByRid(recipeId,i+1).get(0).getId();
                list.getStep().get(i).setId(s_id);
                service.updateStep( list.getStep().get(i));
            }
            for (int i=list.getStep().size();i<old_num;i++){

                list.getStep().get(i).setRid(recipeId);
                list.getStep().get(i).setRecipeOrder(i+1);
                list.getStep().get(i).setImagepath(recipeService.getRecipe(recipeId).getImagepath());
                service.deleteByRid(recipeId,i+1);

            }
        }else if(flag==0){
            for (int i = 0; i <list.getStep().size() ; i++) {
                list.getStep().get(i).setRid(recipeId);
                list.getStep().get(i).setRecipeOrder(i+1);
                list.getStep().get(i).setImagepath(recipeService.getRecipe(recipeId).getImagepath());
                Integer s_id=service.selectByRid(recipeId,i+1).get(0).getId();
                list.getStep().get(i).setId(s_id);
                service.updateStep( list.getStep().get(i));

            }
        }
        else if(flag>0){
            for (int i = 0; i < old_num; i++) {
                list.getStep().get(i).setImagepath(recipeService.getRecipe(recipeId).getImagepath());
                System.out.println("asd:"+list.getStep().get(i));
                System.out.println("rid"+recipeId);
                System.out.println(i+1);
                Integer s_id=service.selectByRid(recipeId,i+1).get(0).getId();
                list.getStep().get(i).setId(s_id);
                service.updateStep( list.getStep().get(i));
            }
            for(int i=old_num;i<size;i++){
                list.getStep().get(i).setRid(recipeId);
                list.getStep().get(i).setRecipeOrder(i+1);
                list.getStep().get(i).setImagepath(recipeService.getRecipe(recipeId).getImagepath());
                System.out.println("asd:"+list.getStep().get(i));
                System.out.println("rid"+recipeId);
                System.out.println(i+1);
                service.saveStep(list.getStep().get(i));

            }
        }
        return "redirect:/recipes";
    }

    @GetMapping("/step/edit/{id}")
    public String toEdit(@PathVariable("id")Integer id, Model model, HttpSession session){

        List<Step> steps = service.getOrderByRid(id);
        Recipe recipe=recipeService.getRecipe(id);
        session.setAttribute("recipe",recipe);

        if(steps.size()!=0){
            model.addAttribute("stepsb",steps);
        }
        return "management/stepadd";
    }
}
