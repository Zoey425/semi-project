package com.mvc.recipe.dao;

import java.util.List;


import com.mvc.recipe.dto.MaterialDto;

public interface MaterialDao {
	String NAMESPACE = "material.";
	
	public List<MaterialDto>  selectList(int recipe_num);
	
	public int insertMaterial(MaterialDto material);
}
