package com.mvc.recipe.dao;

import java.util.HashMap;
import java.util.List;

import com.mvc.recipe.dto.Recipe_StepDto;

public interface Recipe_StepDao {
	String NAMESPACE = "recipe_step.";
	public List<Recipe_StepDto> selectList(int recipe_num);
	
	public abstract int insertStep(HashMap<String,Object> map);
}
