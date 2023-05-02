package com.mvc.recipe.Biz;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.recipe.dto.MemberDto;

public interface MemberBiz {
	
	public MemberDto login(MemberDto dto);
	public MemberDto findId(MemberDto dto);
	public MemberDto findPw(MemberDto dto);
	public void logout(HttpSession session);
	public int insert(MemberDto dto);

	//ID 중복확인
    public MemberDto idCheck(String memberid);

    //nicname 중복확인
    public MemberDto nicnameCheck(String membernicname);


    
}
