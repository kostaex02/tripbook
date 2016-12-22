package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.NoticeDTO;
import com.tripbook.service.NoticeService;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private NoticeService noticeService;
	
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
}
