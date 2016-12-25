package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.UserDTO;
import com.tripbook.service.BoardService;
import com.tripbook.service.FriendService;
import com.tripbook.service.GroupService;
import com.tripbook.service.ScheduleService;
import com.tripbook.service.UserService;

@Controller
@RequestMapping("friends")
public class FriendController {
	@Autowired
	private FriendService friendService;
	@Autowired
	private GroupService groupService;
	@Autowired
	private UserService userService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("main")
	public ModelAndView main(HttpServletRequest request,String friendId){
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		String state =  friendService.selectFriend(userId, friendId);
		ModelAndView mv = new ModelAndView("friends/friendMain");
		UserDTO friend = userService.selectProfile(friendId);
		mv.addObject("friendUserId", friend.getId());
		mv.addObject("friendUserName", friend.getName());
		mv.addObject("friendUserFileName", friend.getFileName());
		mv.addObject("friendState", state);
		mv.addObject("friendBoardList", boardService.selectFriendBoard(userId,friendId,state));
		return mv;
	}
	
	@RequestMapping("biography")
	public ModelAndView biography(HttpServletRequest request,String friendId){
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		String state =  friendService.selectFriend(userId, friendId);
		ModelAndView mv = new ModelAndView("friends/friendBiography");
		UserDTO friend = userService.selectProfile(friendId);
		mv.addObject("friendUserId", friend.getId());
		mv.addObject("friendUserName", friend.getName());
		mv.addObject("friendUserFileName", friend.getFileName());
		mv.addObject("friendState", state);
		mv.addObject("friendBiographyList", scheduleService.selectFriendBiography(userId,friendId,state));
		return mv;
	}
	
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
		return "redirect:/friends/list";
	}
	@RequestMapping("board")
	public String board(HttpServletRequest request,String friendId){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		String state = friendService.selectFriend(userId, friendId);
		UserDTO friend = userService.selectUser(friendId);
		session.setAttribute("friendUserId", friend.getId());
		session.setAttribute("friendUserName", friend.getName());
		session.setAttribute("friendUserFileName", friend.getFileName());
		session.setAttribute("friendUserState", state);
		return "friend/friendMain";
	}
}
