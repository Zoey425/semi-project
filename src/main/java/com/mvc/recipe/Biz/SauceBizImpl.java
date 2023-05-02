package com.mvc.recipe.Biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.SauceDao;
import com.mvc.recipe.dto.SauceDto;
@Service
public class SauceBizImpl implements SauceBiz{
	
	@Autowired
	private SauceDao dao;

	@Override
	public List<SauceDto> selectList(int recipe_num) {
		return dao.selectList(recipe_num);
	}

	@Override
	public int insertSauce(SauceDto sauce) {
		return dao.insertSauce(sauce);		
	}

}
