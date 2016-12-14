package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.service.BoardService;

@Controller
@RequestMapping("main")
public class MainController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}

	/* ·Î±×¾Æ¿ô */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "home";
	}
	
	@RequestMapping("home")
	public ModelAndView home(HttpServletRequest request){
		String userId = (String)request.getSession().getAttribute("userId");
		ModelAndView mv = new ModelAndView("main/main");
		mv.addObject("boardList", boardService.selectBoard(userId));
		return mv;
	}
}
