package com.tripbook.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main")
public class MainController {
	
	@RequestMapping("{pageName}")
	public void page(){}
}
