package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tripbook.service.NoticeService;

@Controller
@RequestMapping("notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("count")
	@ResponseBody
	private int count(HttpServletRequest request){
		return noticeService.countNotice((String)request.getSession().getAttribute("userId"));
	}
}
