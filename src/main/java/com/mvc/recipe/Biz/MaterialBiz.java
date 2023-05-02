package com.mvc.recipe.Biz;

import java.util.List;

import com.mvc.recipe.dto.MaterialDto;

public interface MaterialBiz {

	public List<MaterialDto> selectList(int recipe_num);
	
	public int insertMaterial(MaterialDto material);
}
