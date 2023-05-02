package com.mvc.recipe.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.recipe.Biz.MaterialBiz;
import com.mvc.recipe.Biz.RecipeBiz;
import com.mvc.recipe.Biz.SauceBiz;
import com.mvc.recipe.dto.MaterialDto;
import com.mvc.recipe.dto.RecipeDto;
import com.mvc.recipe.dto.SauceDto;

@Controller
public class WriteController {

    private static final Logger logger = LoggerFactory.getLogger(WriteController.class);

        @Autowired
       private  RecipeBiz recipebiz;

        @Autowired
        private MaterialBiz materialbiz;

        @Autowired
        private SauceBiz saucebiz;


       //public String recipe(HttpSession session) {
       //session.setAttribute("id", "admin");
//       public String recipe(Principal userPrincipal, Model model) {
//          model.addAttribute("id", userPrincipal.getName());
//          return "recipe/recipe";
//       }

       @RequestMapping("/insertform.do")
        public String insertForm() {
            logger.info("INSERT FORM");
            return "/YGJ/boardwrite";
        }

       @RequestMapping("/insertres.do")
       public String insert(@ModelAttribute RecipeDto recipe, MaterialDto material, SauceDto sauce) throws Exception {

           int res = recipebiz.insertRecipe(recipe);
           materialbiz.insertMaterial(material    );
           saucebiz.insertSauce(sauce);

            if(res>0) {
                return "redirect:main.do";
            }else { 
                return "redirect:insertform.do";
            }

       }

}