package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.UserDTO;
import com.tripbook.service.UserService;

@Controller
@RequestMapping("mypage")
public class MyPageController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("profile")
	public ModelAndView selectProfile(HttpServletRequest request){
		HttpSession session = request.getSession();
		UserDTO user = userService.selectProfile((String)session.getAttribute("userId"));
		System.out.println(user);
		ModelAndView mv = new ModelAndView("mypage/mypage");
		mv.addObject("user", user);
		return mv;
	}
}
