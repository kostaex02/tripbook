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
	
	@RequestMapping("list")
	public ModelAndView list(HttpServletRequest request,int groupNo){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		ModelAndView mv = new ModelAndView("friends/group");
		mv.addObject("group", groupService.selectGroup(groupNo));
		mv.addObject("groupMemberList", groupService.selectGroupMember(groupNo));
		mv.addObject("notGroupMemberList", groupService.selectNotGroupMember(groupNo,userId,"1"));
		return mv;
	}
	
	
	@RequestMapping("add")
	@ResponseBody
	public int add(HttpServletRequest request,int groupNo,String [] friendId){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		return groupService.addGroupMember(groupNo,userId,friendId);
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public int delete(HttpServletRequest request,int groupNo){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		return groupService.deleteGroupMember(groupNo,userId);
	}
}
