package com.mvc.recipe.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{
	private Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		logger.info("[interceptor] : preHandle");
		
		if(request.getRequestURI().contains("loginform.do") ||


		         request.getRequestURI().contains("login.do")   ||
		         request.getRequestURI().contains("find") ||
		         request.getRequestURI().contains("logout.do") ||
		         request.getRequestURI().contains("main.do") ||
		         //호준(수정)
		         request.getRequestURI().contains("detail.do") ||
		         request.getRequestURI().contains("insertform.do") ||
		         request.getRequestURI().contains("insert.do") ||
		         request.getRequestURI().contains("/registerform.do") ||
		         request.getRequestURI().contains("/register.do") ||
		         request.getRequestURI().contains("/idCheck.do") ||
		         request.getRequestURI().contains("/nicnameCheck.do") ||

		         request.getRequestURI().contains("/withdraw.do") ||

		         request.getSession().getAttribute("res") != null) {

		         return true;
		      }


		
		if(request.getSession().getAttribute("res") == null) {
			response.sendRedirect("loginform.do");
			return false;
		}
			return false;
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("[interceptor] : postHandle");
	}

	
}
