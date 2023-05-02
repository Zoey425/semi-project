package com.mvc.recipe.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.RecipeDto;
import com.mvc.recipe.dto.SauceDto;
@Repository
public interface ViewDao {
	
	String NAMESPACE = "recipe.";

	public  RecipeDto selectOne(int recipe_num);
	
	

}
