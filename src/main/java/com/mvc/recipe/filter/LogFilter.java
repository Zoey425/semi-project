package com.mvc.recipe.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogFilter implements Filter{

	private Logger logger = LoggerFactory.getLogger(LogFilter.class);
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		//필터 인스턴스 초기화
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//처리
		
		HttpServletRequest req= (HttpServletRequest)request;
		
		String remoteAddr = req.getRemoteAddr(); //ip주소 ipv6 주소의 로컬호스트 ip
		String uri = req.getRequestURI();
		String url = req.getRequestURL().toString();
		String queryString = req.getQueryString();
		String referer = req.getHeader("referer"); // 이전페이지 url
		
		logger.info("LOG FILTER");
		logger.info("remoteAddr : "+remoteAddr);
		logger.info("uri : "+uri);
		logger.info("url : "+url);
		logger.info("queryString : "+queryString);
		logger.info("referer : "+referer+"\n");
		
		chain.doFilter(req, response);  // 체이닝 중 다음에 연결되어있는 처리동작 연결
	}

	@Override
	public void destroy() {
		// 필터 인스턴스 종료
	}

}
