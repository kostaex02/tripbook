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
	
	@RequestMapping("{folderName}/{pageName}")
	public void testPage(){}
	
	@RequestMapping("login")
	public String login(HttpServletRequest request,UserDTO user){
		int result = userService.login(user);
		if(result>0){
			HttpSession session= request.getSession();
			
			session.setAttribute("userId", user.getId());
			session.setAttribute("userName", user.getName());
			session.setAttribute("userFileName", user.getFileName());
			
		}else{
			ModelAndView mv = new ModelAndView();
		}
		return "";
	}
}
