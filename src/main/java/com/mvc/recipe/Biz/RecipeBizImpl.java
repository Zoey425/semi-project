package com.mvc.recipe.Biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.RecipeDao;
import com.mvc.recipe.dto.RecipeDto;

@Service
public class RecipeBizImpl implements RecipeBiz{

	@Autowired
	private RecipeDao dao;
	
	@Override
	public int insertRecipe(RecipeDto recipe) {
		return dao.insertRecipe(recipe);
		

		
	}

}
