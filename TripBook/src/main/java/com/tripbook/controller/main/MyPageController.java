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
		ModelAndView mv = new ModelAndView("mypage/userUpdate");
		mv.addObject("user", user);
		return mv;
	}
	
	@RequestMapping("update")
	public String update(HttpServletRequest request,UserDTO userDTO){
		int result = userService.updateUser(userDTO);
		if(result==0){
			request.setAttribute("errMessage", "Ε»Επ ½ΗΖΠ");
			return "main/main";
		}
		HttpSession session = request.getSession();
		UserDTO tempUser = userService.selectProfile((String)session.getAttribute("userId"));
		session.setAttribute("userName", tempUser.getName());
		session.setAttribute("userFileName", tempUser.getFileName());
		return "main/main";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request){
		HttpSession session = request.getSession();
		int result = userService.deleteUser((String)session.getAttribute("userId"));
		if(result==0){
			request.setAttribute("errMessage", "Ε»Επ ½ΗΖΠ");
			return "main/main";
		}
		return "main/logout";
	}
}
