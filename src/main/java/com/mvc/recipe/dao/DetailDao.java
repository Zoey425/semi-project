package com.mvc.recipe.dao;

import java.util.List;

import com.mvc.recipe.dto.DetailDto;

public interface DetailDao {
	
	String NAMESPACE = "Detaillist.";

	public List<DetailDto> detail_hit(String category);
	public List<DetailDto> detail_new(String category);
	public List<DetailDto> detail_rankbest();
	public List<DetailDto> detail_readbest();
	public List<DetailDto> detail_commentbest();
	

}
