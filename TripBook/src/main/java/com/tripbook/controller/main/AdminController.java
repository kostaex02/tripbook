package com.tripbook.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {
	@RequestMapping("{pageName}")
	public void page(){}
}
