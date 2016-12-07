package com.tripbook.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("biography")
public class BiographyController {
	@RequestMapping("{fileName}")
	public void page(){}
}
