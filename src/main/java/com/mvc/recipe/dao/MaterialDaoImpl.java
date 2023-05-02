package com.mvc.recipe.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.MaterialDto;
@Repository
public class MaterialDaoImpl implements MaterialDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<MaterialDto> selectList(int recipe_num) {
		List<MaterialDto> material = new ArrayList<MaterialDto>();
		
		try {
			material=sqlSession.selectList("material.selectList",recipe_num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return material;
	}

	@Override
	public int insertMaterial(MaterialDto material) {
		int res = 0;

		try {
			res = sqlSession.insert(NAMESPACE + "insertMaterial", material);
		} catch (Exception e) {
			System.out.println("[error] : insert2");
			e.printStackTrace();
		}

		return res;
	}

}
