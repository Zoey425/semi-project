package com.mvc.recipe.dao;


import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.RecipeDto;
import com.mvc.recipe.dto.SauceDto;

@Repository
public class ViewDaoImpl implements ViewDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public RecipeDto selectOne(int recipe_num) {
		RecipeDto  recipe= null;
		
		try {
			recipe=sqlSession.selectOne(NAMESPACE+"selectOne",recipe_num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return recipe;
	}

	

	

	
	
	
}
