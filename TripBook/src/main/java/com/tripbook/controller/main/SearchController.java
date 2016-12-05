package com.tripbook.controller.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.UserDTO;
import com.tripbook.service.UserService;

@Controller
@RequestMapping("search")
public class SearchController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("list")
	public ModelAndView list(HttpServletRequest request){
		HttpSession session = request.getSession();
		List<UserDTO> userList = userService.searchUser((String)session.getAttribute("userId"));
		return null;
	}
}
