package com.mvc.recipe.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.Cook_ImgDto;
@Repository
public class Cook_ImgDaoImpl implements  Cook_ImgDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Cook_ImgDto> selectList(int recipe_num) {
		List<Cook_ImgDto> cook_img = new ArrayList<Cook_ImgDto>();
		
		try {
			cook_img = sqlSession.selectList("cook_image.selectList",recipe_num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cook_img;
	}
	
	public int insertCookimg(HashMap<String,Object> map) {
		int res = 0;

		try {
			res = sqlSession.insert(NAMESPACE + "insert", map);
		} catch (Exception e) {
			System.out.println("[error] : insert6");
			e.printStackTrace();
		}

		return res;
	}
}
