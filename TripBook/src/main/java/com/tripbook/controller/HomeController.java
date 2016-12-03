package com.tripbook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tripbook.dto.UserDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}
	
	@RequestMapping("{folderName}/{pageName}")
	public void testPage(){}
	
	@RequestMapping("login")
	public void login(UserDTO user){
		
	}
}
