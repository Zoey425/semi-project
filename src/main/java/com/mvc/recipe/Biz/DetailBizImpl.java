package com.mvc.recipe.Biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.DetailDao;
import com.mvc.recipe.dto.DetailDto;

@Service
public class DetailBizImpl implements DetailBiz {

	@Autowired
	private DetailDao dao;


	@Override
	public List<DetailDto> detail_hit(String category) {
		return dao.detail_hit(category);
	}

	@Override
	public List<DetailDto> detail_new(String category) {
		return dao.detail_new(category);
	}

	@Override
	public List<DetailDto> detail_rankbest() {
		return dao.detail_rankbest();
	}

	@Override
	public List<DetailDto> detail_readbest() {
		return dao.detail_readbest();
	}

	@Override
	public List<DetailDto> detail_commentbest() {
		return dao.detail_commentbest();
	}
	
	
	
}
