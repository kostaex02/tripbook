package com.tripbook.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mypage")
public class MyPageController {
	@RequestMapping("{pageName}")
	public void page(){}
}
