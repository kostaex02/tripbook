package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.GroupDTO;
import com.tripbook.service.FriendService;
import com.tripbook.service.GroupService;

@Controller
@RequestMapping("friends")
public class FriendController {
	@Autowired
	private FriendService friendService;
	@Autowired
	private GroupService groupService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("list")
	public ModelAndView friends(HttpServletRequest request){
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
		
		ModelAndView mv = new ModelAndView("friends/friends");
		mv.addObject("friendList", friendService.selectFriendList(userId, "1"));
		mv.addObject("groupList", groupService.selectGroupList(userId));
		return mv;
	}
	
	@RequestMapping("accept")
	@ResponseBody
	public int accept(HttpServletRequest request,int noticeNo){
		return friendService.acceptFriend(noticeNo);
	}
	
	@RequestMapping("reject")
	@ResponseBody
	public int reject(HttpServletRequest request,int noticeNo){
		return friendService.rejectFriend(noticeNo);

	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request,String friendId){
		HttpSession session = request.getSession();
		friendService.deleteFriend((String)session.getAttribute("userId"),friendId);
		return "friends/list";
	}
}
