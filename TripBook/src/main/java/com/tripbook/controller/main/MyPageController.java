package com.tripbook.controller.main;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
	public String update(HttpServletRequest request,UserDTO user,MultipartFile file){
		String saveDir = request.getSession().getServletContext().getRealPath("/tripbook/user/"+user.getId()+"/");
		File folder = new File(saveDir);
		if (folder.exists()) {
			folder.delete();
			folder.mkdir();
		}
		if(file!=null){
			user.setFileName(file.getOriginalFilename());
			try {
				file.transferTo(new File(saveDir+user.getFileName()));
				int result = userService.updateUser(user);
				if(result==0){
					request.setAttribute("errMessage", "가입 실패");
					return "mypage/mypage";
				}
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			int result = userService.register(user);
			if(result==0){
				request.setAttribute("errMessage", "가입 실패");
				return "mypage/mypage";
			}
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
			request.setAttribute("errMessage", "탈퇴 실패");
			return "main/main";
		}
		return "main/logout";
	}
}
