package com.mvc.recipe.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.RecipeDto;

@Repository
public class RecipeDaoImpl implements RecipeDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertRecipe(RecipeDto recipe) {
		int res = 0;
		try {
			res = sqlSession.insert(NAMESPACE+"insert", recipe);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
}
