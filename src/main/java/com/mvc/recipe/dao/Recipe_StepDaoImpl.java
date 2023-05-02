package com.mvc.recipe.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.Recipe_StepDto;

@Repository
public class Recipe_StepDaoImpl implements Recipe_StepDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Recipe_StepDto> selectList(int recipe_num) {
		List<Recipe_StepDto > recipe_step = new ArrayList<Recipe_StepDto>();
		
		try {
			recipe_step = sqlSession.selectList("recipe_step.selectList",recipe_num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return recipe_step;
	}

	public int insertStep(HashMap<String, Object> map) {
		int res = 0;

		try {
			res = sqlSession.insert(NAMESPACE + "insert", map);
		} catch (Exception e) {
			System.out.println("[error] : insert2");
			e.printStackTrace();
		}

		return res;
	}

}
