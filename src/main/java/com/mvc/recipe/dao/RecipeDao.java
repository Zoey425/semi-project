package com.mvc.recipe.dao;

import com.mvc.recipe.dto.RecipeDto;

public interface RecipeDao {
	String NAMESPACE = "recipe.";
	public int insertRecipe(RecipeDto recipe);
}
