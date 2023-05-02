package com.mvc.recipe.Biz;

import java.util.List;

import com.mvc.recipe.dto.SauceDto;

public interface SauceBiz {

	public abstract List<SauceDto> selectList(int recipe_num);
	
	public abstract int insertSauce(SauceDto sauce);
}
