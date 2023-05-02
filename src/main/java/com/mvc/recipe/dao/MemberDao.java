package com.mvc.recipe.dao;

import com.mvc.recipe.dto.MemberDto;

public interface MemberDao {
	
	String NAMESPACE = "member.";
	
	public MemberDto login(MemberDto dto);
	public MemberDto findId(MemberDto dto);
	public MemberDto findPw(MemberDto dto);
	public int insert(MemberDto dto);

	
	//ID 중복확인
	public MemberDto idCheck(String memberid);

	//nicname 중복확인
    public MemberDto nicnameCheck(String membernicname);

}
