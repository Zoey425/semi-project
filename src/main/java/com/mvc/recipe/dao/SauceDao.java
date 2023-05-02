package com.mvc.recipe.dao;

import java.util.List;


import com.mvc.recipe.dto.SauceDto;
public interface SauceDao {
	String NAMESPACE = "sauce.";
	public List<SauceDto> selectList(int recipe_num); 
	
	public abstract int insertSauce(SauceDto sauce); //void?
}
