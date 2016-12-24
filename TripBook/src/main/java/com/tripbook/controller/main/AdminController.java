package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.NoticeDTO;
import com.tripbook.service.BoardService;
import com.tripbook.service.NoticeService;
import com.tripbook.service.UserService;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private UserService userService;
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("notice")
	public ModelAndView notice(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("admin/noticeManagement");
		mv.addObject("noticeList", noticeService.selectNoticeByAdmin());
		return mv;
	}
	
	@RequestMapping("sendNotice")
	public String sendNotice(HttpServletRequest request,String content){
		noticeService.insertNotice(new NoticeDTO("2", (String)request.getSession().getAttribute("userId"), null, content));
		return "redirect:notice";
	}
	
	@RequestMapping("user")
	public ModelAndView user(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("admin/userManagement");
		mv.addObject("userList", userService.selectUserByAdmin());
		return mv;
	}
	@RequestMapping("update")
	public String update(HttpServletRequest request,String userId){
		userService.updateUserState(userId);
		return "redirect:user";
	}
	
	@RequestMapping("message")
	public ModelAndView message(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("admin/messageManagement");
		mv.addObject("noticeList", noticeService.selectMessageByAdmin());
		mv.addObject("userList", userService.selectUserByAdmin());
		return mv;
	}
	
	@RequestMapping("sendMessage")
	public String sendMessage(HttpServletRequest request,String content,String [] users){
		for(String str:users){
			noticeService.insertNotice(new NoticeDTO("2", (String)request.getSession().getAttribute("userId"), str, content));
		}
		return "redirect:message";
	}
	
	@RequestMapping("board")
	public ModelAndView board(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("admin/boardManagement");
		mv.addObject("boardList", boardService.selectBoardByAdmin());
		return mv;
	}
}
