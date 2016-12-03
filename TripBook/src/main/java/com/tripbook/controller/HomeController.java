package com.tripbook.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping("main/{pageName}")
	public void test(){
	}
	
	@RequestMapping("login")
	public String login(HttpServletRequest request,UserDTO user){
		UserDTO tempUser = userService.login(user);
		if(tempUser!=null){
			HttpSession session= request.getSession();
			
			session.setAttribute("userId", tempUser.getId());
			session.setAttribute("userName", tempUser.getName());
			session.setAttribute("userFileName", tempUser.getFileName());
			
		}else{
			ModelAndView mv = new ModelAndView();
		}
		return "";
	}
}
