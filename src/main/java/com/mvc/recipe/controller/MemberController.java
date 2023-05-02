package com.mvc.recipe.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.recipe.Biz.MemberBiz;
import com.mvc.recipe.dto.MemberDto;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberBiz biz;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/loginform.do")
	public String loginForm() {
		logger.info("LOGIN FORM");
		
		return "/Login/memberlogin";
	}
	
	@RequestMapping("/login.do")
	public String login(HttpSession session, MemberDto dto) {
		
		MemberDto res = biz.login(dto);


		if(res!=null && passwordEncoder.matches(dto.getMemberpw(), res.getMemberpw())) {
			session.setAttribute("res", res);
			System.out.println("로그인 성공");
			return "redirect:main.do";
		}else {
			int result = 0;
			session.setAttribute("result", result);
			System.out.println("로그인 실패");
			return "redirect:loginform.do";
		}
	}
	
	@RequestMapping("/findIdform.do")
	public String findIdform() {
		logger.info("FIND ID FORM");
		
		return "/Login/findId";
	}
	
	
	  @RequestMapping(value="/ajaxfindId.do",method=RequestMethod.POST)
	  @ResponseBody 
	  public Map<String,Boolean> ajaxfindId(HttpSession session,@RequestBody MemberDto dto){ 
		  logger.info("FIND ID");
		  MemberDto res = biz.findId(dto);
		  boolean check = false;
	  
		  if(res!=null) {
			  session.setAttribute("findid", res); 
			  check=true;   
		  }
	  
		  Map<String, Boolean> map = new HashMap<String,Boolean>();
		  map.put("check",check);
		  return map; 
	  	  }
	  
	  @RequestMapping("/findIdResult.do")
	  public String findIdResult() {
		  logger.info("FIND ID RESULT");
	  
		  return "/Login/findIdResult"; }
	  
	  @RequestMapping("/findPwform.do")
	  public String findPwform() {
		  logger.info("FIND PW FORM");
	  
		  return "/Login/findPw"; }
	  
	  @RequestMapping(value="/ajaxfindPw.do",method=RequestMethod.POST)
	  @ResponseBody
	  public Map<String,Boolean> ajaxfindPw(HttpSession session,@RequestBody MemberDto dto){ 
		  logger.info("FIND PW");
		  
		  MemberDto res = biz.findPw(dto);
		  boolean check = false;
	  
		  if(res!=null) {
			  session.setAttribute("findpw", res);
			  check=true; 
		  }
	  
		  Map<String, Boolean> map = new HashMap<String,Boolean>();
		  map.put("check",check);
	  
		  return map; 
		  }
	  
	 @RequestMapping("/findPwResult.do") 
	 public String findPwResult() {
		 logger.info("FIND PW RESULT");
	  
		 return "/Login/findPwResult"; }
	 
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		logger.info("LOGOUT");
		
		biz.logout(session);
		
		return "redirect:loginform.do";
	}
	
	@RequestMapping("/registerform.do")
	public String register() {
		logger.info("REGISTER FORM");
		
		return "/register/mvcregister";
	}
	
	@RequestMapping("/register.do")
	public String memberInsert(MemberDto dto) {
		
		//화면에서 넘어오는 password를 암호화해서 dto에 저장
		dto.setMemberpw(passwordEncoder.encode(dto.getMemberpw()));
		System.out.println(dto.getMemberpw());
		
		int res = biz.insert(dto);
		
		if(res>0) {
			return "redirect:loginform.do";
		}else {
			return "redirect:registerform.do";
		}
		
	}
	
	@RequestMapping("/mypage.do")
	public String mypage() {
		logger.info("MYPAGE");
		
		return "/Login/mypage";
	}
	
	@RequestMapping("/memberupdateform.do")
	public String memberupdate() {
		logger.info("UPDATE FORM");
		
		return "/Login/updateform";
	}


	@RequestMapping("/test.do")
	public String test() {
		return "/Login/main";
	}
	

    @RequestMapping(value="/idCheck.do", method=RequestMethod.POST)
    @ResponseBody
    public int postIdCheck(@RequestParam("memberid") String memberid, HttpServletRequest req) throws Exception{
    	MemberDto dto = null;
        int res = 0;
    	
    	 dto = biz.idCheck(memberid);
    	
    	if(dto != null) {
    		res = 1;
    	}else {
    		res = 0;
    	}

    	return res;
        
    }


    @RequestMapping(value="/nicnameCheck.do", method=RequestMethod.POST)
    @ResponseBody
    public int postNicnameCheck(@RequestParam("membernicname") String membernicname, HttpServletRequest req) throws Exception{
        MemberDto dto = null;
        int res = 0;

         dto = biz.nicnameCheck(membernicname);

        if(dto != null) {
            res = 1;
        }else {
            res = 0;
        }

        return res;

    }


    
	
	
	
	
	
	
	
	
	
	
}
