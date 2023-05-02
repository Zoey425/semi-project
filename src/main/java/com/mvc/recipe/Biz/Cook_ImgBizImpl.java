package com.mvc.recipe.Biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.Cook_ImgDao;
import com.mvc.recipe.dto.Cook_ImgDto;


@Service
public class Cook_ImgBizImpl implements Cook_ImgBiz{

		
	
	@Autowired
	private Cook_ImgDao dao;

	@Override
	public List<Cook_ImgDto> selectList(int recipe_num) {
		return dao.selectList(recipe_num);
	}
	
	
	}

