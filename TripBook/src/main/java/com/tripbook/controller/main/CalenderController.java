package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tripbook.dto.ScheduleDTO;
import com.tripbook.service.ScheduleService;

@Controller
@RequestMapping("calendar")
public class CalenderController {
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("add")
	@ResponseBody
	public int add(HttpServletRequest request,ScheduleDTO scheduleDTO){
		return scheduleService.addSchedule(scheduleDTO);
	}
}
