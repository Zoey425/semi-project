package com.mvc.recipe.dao;

import java.util.List;

import com.mvc.recipe.dto.DetailDto;

public interface MainDao {
	
	String NAMESPACE = "mainList.";
	
	public List<DetailDto> selectList();
	public DetailDto selectOne(int recipe_num);
	public List<DetailDto> rankList();
	public List<DetailDto> hitList();
	

}
