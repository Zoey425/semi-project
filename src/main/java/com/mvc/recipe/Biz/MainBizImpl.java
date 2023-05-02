package com.mvc.recipe.Biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.MainDao;
import com.mvc.recipe.dto.DetailDto;

@Service
public class MainBizImpl implements MainBiz{
	
	@Autowired
	private MainDao dao;

	@Override
	public List<DetailDto> selectList() {
		return dao.selectList();
	}

	@Override
	public List<DetailDto> rankList() {
		return dao.rankList();
	}

	@Override
	public DetailDto selectOne(int recipe_num) {
		return dao.selectOne(recipe_num);
	}

	@Override
	public List<DetailDto> hitList() {
		return dao.hitList();
	}

	
	
}
