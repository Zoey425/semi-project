package com.mvc.recipe.dto;

public class MemberDto {
	private String memberid;
	private String memberpw;
	private String membernicname;
	private String membername;
	private String memberphone;
	private String memberemail;
	public MemberDto() {
		super();
	}
	public MemberDto(String memberid, String memberpw, String membernicname, String membername, String memberphone,
			String memberemail) {
		super();
		this.memberid = memberid;
		this.memberpw = memberpw;
		this.membernicname = membernicname;
		this.membername = membername;
		this.memberphone = memberphone;
		this.memberemail = memberemail;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMemberpw() {
		return memberpw;
	}
	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}
	public String getMembernicname() {
		return membernicname;
	}
	public void setMembernicname(String membernicname) {
		this.membernicname = membernicname;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getMemberphone() {
		return memberphone;
	}
	public void setMemberphone(String memberphone) {
		this.memberphone = memberphone;
	}
	public String getMemberemail() {
		return memberemail;
	}
	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}
	
	
	
}
