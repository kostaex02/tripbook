package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.service.FriendService;

@Controller
@RequestMapping("friends")
public class FriendController {
	@Autowired
	private FriendService friendService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("list")
	public ModelAndView friends(HttpServletRequest request){
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		ModelAndView mv = new ModelAndView("friends/friends");
		mv.addObject("friendList", friendService.selectFriendList(userId, "1"));
		return mv;
	}
	
}
