package com.mvc.recipe.Biz;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.ViewDao;
import com.mvc.recipe.dto.RecipeDto;
@Service
public class ViewBizImpl implements ViewBiz{

	@Autowired
	private ViewDao dao;

	@Override
	public RecipeDto selectOne(int recipe_num) {
		return dao.selectOne(recipe_num);
	}
	
	

	
}
