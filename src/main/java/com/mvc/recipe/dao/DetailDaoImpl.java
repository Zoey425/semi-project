package com.mvc.recipe.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.DetailDto;



@Repository
public class DetailDaoImpl implements DetailDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public List<DetailDto> detail_hit(String category) {
		List<DetailDto> detail_hit = new ArrayList<DetailDto>();
		
		try {
			detail_hit = sqlSession.selectList(NAMESPACE+"detail_hit", category);
		} catch (Exception e) {
			System.out.println("[error] : detail_hit");
			e.printStackTrace();
		}
		return detail_hit;
	}

	
	@Override
	public List<DetailDto> detail_new(String category) {
		List<DetailDto> detail_new = new ArrayList<DetailDto>();
		
		try {
			detail_new = sqlSession.selectList(NAMESPACE+"detail_new", category);
		} catch (Exception e) {
			System.out.println("[error] : detail_new");
			e.printStackTrace();
		}
		return detail_new;
	}
	
	

	@Override
	public List<DetailDto> detail_rankbest() {
		List<DetailDto> detail_rankbest = new ArrayList<DetailDto>();
		
		try {
			detail_rankbest = sqlSession.selectList(NAMESPACE+"detail_rankbest");
		} catch (Exception e) {
			System.out.println("[error] : detail_rankbest");
			e.printStackTrace();
		}
		return detail_rankbest;
	}
	

	@Override
	public List<DetailDto> detail_readbest() {
		List<DetailDto> detail_readbest = new ArrayList<DetailDto>();
		
		try {
			detail_readbest = sqlSession.selectList(NAMESPACE+"detail_readbest");
		} catch (Exception e) {
			System.out.println("[error] : recipe_readcount");
			e.printStackTrace();
		}
		return detail_readbest;
	}
	

	@Override
	public List<DetailDto> detail_commentbest() {
		List<DetailDto> detail_commentbest = new ArrayList<DetailDto>();
		
		try {
			detail_commentbest = sqlSession.selectList(NAMESPACE+"detail_commentbest");
		} catch (Exception e) {
			System.out.println("[error] : reply_num");
			e.printStackTrace();
		}
		return detail_commentbest;
	}
}


