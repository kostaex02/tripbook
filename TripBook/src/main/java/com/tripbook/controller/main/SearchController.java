package com.tripbook.controller.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.UserDTO;
import com.tripbook.service.FriendService;
import com.tripbook.service.UserService;

@Controller
@RequestMapping("search")
public class SearchController {
	@Autowired
	private UserService userService;
	@Autowired
	private FriendService friendService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("list")
	public ModelAndView list(HttpServletRequest request,String keyword){
		HttpSession session = request.getSession();
		List<UserDTO> userList = userService.searchUser((String)session.getAttribute("userId"),keyword);
		ModelAndView mv = new ModelAndView("search/searchList");
		
		mv.addObject("userList", userList);
		return mv;
	}
	
	@RequestMapping("addFriend")
	@ResponseBody
	public int addFriend(HttpServletRequest request,String friendId){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		return friendService.addFriend(userId, friendId);
	}
}
