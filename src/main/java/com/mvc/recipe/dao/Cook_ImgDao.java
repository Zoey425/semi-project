package com.mvc.recipe.dao;

import java.util.HashMap;
import java.util.List;


import com.mvc.recipe.dto.Cook_ImgDto;

public interface Cook_ImgDao {
	String NAMESPACE = "cook_image.";
	public List<Cook_ImgDto> selectList(int recipe_num);
	
	public int insertCookimg(HashMap<String,Object> map);
}
