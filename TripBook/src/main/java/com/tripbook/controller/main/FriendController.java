package com.tripbook.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("friends")
public class FriendController {

	@RequestMapping("{pageName}")
	public void page(){}
}
