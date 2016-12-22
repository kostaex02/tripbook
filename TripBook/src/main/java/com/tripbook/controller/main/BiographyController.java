package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.service.ScheduleService;

@Controller
@RequestMapping("biography")
public class BiographyController {
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("{fileName}")
	public void page(HttpServletRequest request){}
	@RequestMapping("list")
	public ModelAndView list(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("biography/biography");
		mv.addObject("biographyList", scheduleService.selectBiography((String)request.getSession().getAttribute("userId")));
		return mv;
	}
}
