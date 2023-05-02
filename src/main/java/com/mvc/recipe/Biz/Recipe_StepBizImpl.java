package com.mvc.recipe.Biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.Recipe_StepDao;
import com.mvc.recipe.dto.Recipe_StepDto;

@Service
public class Recipe_StepBizImpl implements Recipe_StepBiz{
	
	@Autowired
	private Recipe_StepDao dao;

	@Override
	public List<Recipe_StepDto> selectList(int recipe_num) {
		return dao.selectList(recipe_num);
	}

}
