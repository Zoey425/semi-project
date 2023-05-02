package com.mvc.recipe.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.SauceDto;
@Repository
public class SauceDaoImpl implements SauceDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<SauceDto> selectList(int recipe_num) {
		List<SauceDto> sauce = new ArrayList<SauceDto>();
		
		try {
			sauce = sqlSession.selectList("sauce.selectList", recipe_num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sauce;
	}

	@Override
	public int insertSauce(SauceDto sauce) {
		int res = 0;

		try {
			res = sqlSession.insert(NAMESPACE + "insert", sauce);
		} catch (Exception e) {
			System.out.println("[error] : insertSauce");
			e.printStackTrace();
		}

		return res;
	}

}
