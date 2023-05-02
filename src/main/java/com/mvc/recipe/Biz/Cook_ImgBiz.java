package com.mvc.recipe.Biz;

import java.util.List;

import com.mvc.recipe.dto.Cook_ImgDto;

public interface Cook_ImgBiz {
	
	public List<Cook_ImgDto> selectList(int recipe_num);
	
	
	
}
