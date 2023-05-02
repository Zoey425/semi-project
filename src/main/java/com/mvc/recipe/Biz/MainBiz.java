package com.mvc.recipe.Biz;

import java.util.List;

import com.mvc.recipe.dto.DetailDto;

public interface MainBiz {
	
	public List<DetailDto> selectList();
	public DetailDto selectOne(int recipe_num);
	public List<DetailDto> rankList();
	public List<DetailDto> hitList();
}
