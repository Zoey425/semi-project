package com.mvc.recipe.Biz;

import java.util.List;

import com.mvc.recipe.dto.Recipe_StepDto;

public interface Recipe_StepBiz {

	public List<Recipe_StepDto> selectList(int recipe_num);
}
