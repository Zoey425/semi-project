package com.mvc.recipe.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.DetailDto;

@Repository
public class MainDaoImpl implements MainDao {

	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public List<DetailDto> selectList() {
	
		List<DetailDto> list = new ArrayList<DetailDto>();
		
		try {
		list = sqlSession.selectList(NAMESPACE+"selectList"); 
		System.out.println("[sucess] : listAll");
		}catch (Exception e){
			System.out.println("[error] : listAll");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public DetailDto selectOne(int recipe_num) {
		
		DetailDto dto = null;
		try {
			dto = sqlSession.selectOne(NAMESPACE+"selectOne", recipe_num);
		} catch (Exception e) {
			System.out.println("[error]: listone");
			e.printStackTrace();
		}
		return dto;
	}
	
	
	@Override
	public List<DetailDto> rankList() {
		
		List<DetailDto> rank = new ArrayList<DetailDto>();
		
		try {
			rank = sqlSession.selectList(NAMESPACE+"rankList"); 
		System.out.println("[sucess] : rankList");
		}catch (Exception e){
			System.out.println("[error] : rankList");
			e.printStackTrace();
		}
		return rank;
	}


	@Override
	public List<DetailDto> hitList() {
		
		List<DetailDto> hit = new ArrayList<DetailDto>();
		
		try {
			hit = sqlSession.selectList(NAMESPACE+"hitList"); 
		System.out.println("[sucess] : hitList");
		}catch (Exception e){
			System.out.println("[error] : hitList");
			e.printStackTrace();
		}
		return hit;
	}


}
