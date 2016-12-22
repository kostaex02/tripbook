package com.tripbook.controller.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("biography")
public class BiographyController {
	@RequestMapping("{fileName}")
	public void page(HttpServletRequest request){}
	
	@RequestMapping("list")
	public void list(HttpServletRequest request){
		
	}
}
