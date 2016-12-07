package com.tripbook.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	
	@RequestMapping("checkId")
	@ResponseBody
	public int checkId(String userId){
		return userService.checkId(userId);
	}
	
	@RequestMapping("register")
	public String register(HttpServletRequest request,UserDTO user,MultipartFile file){
		String saveDir = request.getSession().getServletContext().getRealPath("/WEB-INF/tripbook/user/"+user.getId()+"/");
		File folder = new File(saveDir);
		if (!folder.exists()) {
			folder.mkdirs();
		}
		if(file!=null){
			user.setFileName(file.getOriginalFilename());
			try {
				file.transferTo(new File(saveDir+user.getFileName()));
				int result = userService.register(user);
				if(result==0){
					request.setAttribute("errMessage", "가입 실패");
				}
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			int result = userService.register(user);
			if(result==0){
				request.setAttribute("errMessage", "가입 실패");
			}
		}
		return "home";
	}
}
