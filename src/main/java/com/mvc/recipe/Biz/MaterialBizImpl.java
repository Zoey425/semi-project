package com.mvc.recipe.Biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.MaterialDao;
import com.mvc.recipe.dto.MaterialDto;

@Service
public class MaterialBizImpl implements MaterialBiz{
	
	@Autowired
	private MaterialDao dao;

	@Override
	public List<MaterialDto> selectList(int recipe_num) {
		return dao.selectList(recipe_num);
	}

	@Override
	public int insertMaterial(MaterialDto material) {
		return dao.insertMaterial(material);
	}

}
