package com.mvc.recipe.Biz;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.recipe.dao.MemberDao;
import com.mvc.recipe.dto.MemberDto;


@Service
public class MemberBizImpl implements MemberBiz{

	@Autowired
	private MemberDao dao;
	
	@Override
	public MemberDto login(MemberDto dto) {
		
		return dao.login(dto);
	}

	@Override
	public MemberDto findId(MemberDto dto) {
	
		return dao.findId(dto);
	}
	
	@Override
	public MemberDto findPw(MemberDto dto) {

		return dao.findPw(dto);
	}

	@Override
	public void logout(HttpSession session) {
		
		session.invalidate();
	}
	
	@Override
	public int insert(MemberDto dto) {
		return dao.insert(dto);
	}

	@Override
    public MemberDto idCheck(String memberid){
        return dao.idCheck(memberid);
    }

	@Override

    public MemberDto nicnameCheck(String membernicname) {
        return dao.nicnameCheck(membernicname);
    }

	
}
