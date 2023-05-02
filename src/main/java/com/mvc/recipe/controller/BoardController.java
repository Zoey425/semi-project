package com.mvc.recipe.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mvc.recipe.Biz.Cook_ImgBiz;
import com.mvc.recipe.Biz.MaterialBiz;
import com.mvc.recipe.Biz.Recipe_StepBiz;
import com.mvc.recipe.Biz.SauceBiz;
import com.mvc.recipe.Biz.ViewBiz;
import com.mvc.recipe.dto.Cook_ImgDto;
import com.mvc.recipe.dto.MaterialDto;
import com.mvc.recipe.dto.RecipeDto;
import com.mvc.recipe.dto.Recipe_StepDto;
import com.mvc.recipe.dto.SauceDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private ViewBiz viewbiz;
	
	@Autowired
	private SauceBiz saucebiz;
	
	@Autowired
	private MaterialBiz materialbiz;
	
	@Autowired
	private Recipe_StepBiz recipe_stepbiz;
	
	
	@Autowired
	private Cook_ImgBiz cook_imgbiz;
	
	@GetMapping(value="/detail.do")
	public String detail(int recipe_num, Model model) {
		
		RecipeDto recipe = viewbiz.selectOne(recipe_num);
		List<SauceDto> sauces = saucebiz.selectList(recipe_num);
		List<MaterialDto> materials = materialbiz.selectList(recipe_num);
		
		if (sauces.size() > 0) {
			SauceDto sauceCommas = sauces.get(0);			
			String[] sauceNameSplits = sauceCommas.getSauce_name().split(",");
			String[] sauceAmountSplits = sauceCommas.getSauce_amount().split(",");			
			
			model.addAttribute("sauceNameSplits",sauceNameSplits);
			model.addAttribute("sauceAmountSplits",sauceAmountSplits);			
		} else {			
			model.addAttribute("sauceNameSplits",null);
			model.addAttribute("sauceAmountSplits",null);	
		}
		
		if (materials.size() > 0) {
			MaterialDto materialCommas = materials.get(0);
			String[] materialNameSplits = materialCommas.getMaterial_name().split(",");
			String[] materialAmountSplits = materialCommas.getMaterial_amount().split(",");
			
			model.addAttribute("materialNameSplits",materialNameSplits);
			model.addAttribute("materialAmountSplits",materialAmountSplits);
		} else {
			model.addAttribute("materialNameSplits",null);
			model.addAttribute("materialAmountSplits",null);
		}		
		
		
		List<Recipe_StepDto> recipeSteps = recipe_stepbiz.selectList(recipe_num); 
		List<Cook_ImgDto> cookImages = cook_imgbiz.selectList(recipe_num); 
		
		model.addAttribute("cookImages", cookImages);
		model.addAttribute("recipeSteps",recipeSteps);
		model.addAttribute("recipe",recipe);
		return "recipe_detail/recipe_detail2";
		
	}
	
	
	

	
	
	
}