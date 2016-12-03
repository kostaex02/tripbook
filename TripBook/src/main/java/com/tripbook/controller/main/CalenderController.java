package com.tripbook.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("calendar")
public class CalenderController {
	@RequestMapping("{pageName}")
	public void page(){}
}
