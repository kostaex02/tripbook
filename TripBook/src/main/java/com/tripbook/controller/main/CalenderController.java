package com.tripbook.controller.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.ScheduleDTO;
import com.tripbook.service.GroupService;
import com.tripbook.service.ScheduleService;

@Controller
@RequestMapping("calendar")
public class CalenderController {
	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private GroupService groupService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("add")
	@ResponseBody
	public int add(HttpServletRequest request,ScheduleDTO scheduleDTO){
		HttpSession session = request.getSession();
		System.out.println(scheduleDTO.getEndDate());
		scheduleDTO.setWriter((String)session.getAttribute("userId"));
		return scheduleService.addSchedule(scheduleDTO);
	}
	
	@RequestMapping("list")
	public ModelAndView list(HttpServletRequest request){
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView("calendar/calendar");
		
		System.out.println(groupService.selectGroupList((String)session.getAttribute("userId")));
		mv.addObject("groupList", groupService.selectGroupList((String)session.getAttribute("userId")));
		return mv;
	}
	
	@RequestMapping("init")
	@ResponseBody
	public List<ScheduleDTO> init(HttpServletRequest request){
		HttpSession session = request.getSession();
		return scheduleService.selectSchedule((String)session.getAttribute("userId"));
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public int delete(HttpServletRequest request,int scheduleNo){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		return scheduleService.deleteSchedule(scheduleNo,userId);
	}
	
	@RequestMapping("update")
	@ResponseBody
	public int update(HttpServletRequest request,int scheduleNo,String startDate,String endDate){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		return scheduleService.updateSchedule(scheduleNo,startDate,endDate,userId);
	}
}
