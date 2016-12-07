package com.tripbook.aspectj;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class SessionCheckAdvice {
	
	@Around("execution(public * com.tripbook.controller.main.*.*(..))")
	public Object around(ProceedingJoinPoint point) throws Throwable{
		Object methodParams [] = point.getArgs();
		HttpServletRequest request = (HttpServletRequest) methodParams[0];
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userId")==null){
			//오류발생!!!
			request.setAttribute("errMsg", "로그인이 되어있지 않습니다");
			return "home";
			
		}
		
		Object obj = point.proceed();
		
		return obj;
	}
}
