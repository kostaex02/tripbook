package com.tripbook.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.UserDTO;
import com.tripbook.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping("{pageName}")
	public void testPage(){
	}
	
	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest request,UserDTO user){
		UserDTO tempUser = userService.login(user);
		ModelAndView mv = null;
		if(tempUser!=null){
			HttpSession session= request.getSession();
			
			session.setAttribute("userId", tempUser.getId());
			session.setAttribute("userName", tempUser.getName());
			session.setAttribute("userFileName", tempUser.getFileName());
			/*mv = new ModelAndView("main/main");*/
			return mv = new ModelAndView("redirect:loginResult");
		}else{
			mv=new ModelAndView("home");
		}
		return mv;
	}
	/* 새로고침시 재로그인 방지 */
	@RequestMapping("loginResult")
	public String loginResult(){
		
		return "main/main";
	}
	
	/* 로그아웃 */
	@RequestMapping("logout")
	public String logout(HttpSession session){
		System.out.println("로그아웃");
		session.invalidate();//세션 종료
		return "home";
	}
	
	
	@RequestMapping("checkId")
	@ResponseBody
	public int checkId(String userId){
		return userService.checkId(userId);
	}
	
	@RequestMapping("register")
	public String register(UserDTO user){
		System.out.println(user);
		int result = userService.register(user);
		
		return "home";
	}
}
