package com.mvc.recipe.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.recipe.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public MemberDto login(MemberDto dto) {
		
		MemberDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"login",dto);
		} catch (Exception e) {
			System.out.println("[error : login]");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public MemberDto findId(MemberDto dto) {
		
		MemberDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"findid",dto);
		} catch (Exception e) {
			System.out.println("[error : findid]");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public MemberDto findPw(MemberDto dto) {
		
		MemberDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"findpw",dto);
		} catch (Exception e) {
			System.out.println("[error : findpw]");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int insert(MemberDto dto) {
		int res=0;
		try {
			res = sqlSession.insert(NAMESPACE+"insert",dto);
		} catch (Exception e) {
			System.out.println("[error] : member insert");
			e.printStackTrace();
		}
		
		return res;
	}
	
	@Override
    public MemberDto idCheck(String memberid){
        MemberDto res = null;
        
        try {
			res = sqlSession.selectOne(NAMESPACE+"idcheck",memberid);
		} catch (Exception e) {
			System.out.println("[error : idCheck]");
			e.printStackTrace();
		}
        
        return res;
    }
	
	@Override
    public MemberDto nicnameCheck(String membernicname) {
        MemberDto res = null;

        try {
            res = sqlSession.selectOne(NAMESPACE+"nicnamecheck",membernicname);
        } catch (Exception e) {
            System.out.println("[error : nicnameCheck]");
            e.printStackTrace();
        }
                return res;
    }

}
