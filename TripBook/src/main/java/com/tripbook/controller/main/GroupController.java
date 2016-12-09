package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tripbook.service.GroupService;

@Controller
@RequestMapping("group")
public class GroupController {
	@Autowired
	private GroupService groupService;

	@RequestMapping("create")
	@ResponseBody
	public int create(HttpServletRequest request,String groupName,String[] friendId){
		HttpSession session = request.getSession();
		return groupService.create(groupName, (String)session.getAttribute("userId"), friendId);
	}
	
	@RequestMapping("accept")
	@ResponseBody
	public int accept(HttpServletRequest request,int noticeNo){
		return groupService.acceptGroup(noticeNo);
	}
	
	@RequestMapping("reject")
	@ResponseBody
	public int reject(HttpServletRequest request,int noticeNo){
		return groupService.rejectGroup(noticeNo);

	}
}
