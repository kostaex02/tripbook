package com.tripbook.controller.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tripbook.dto.ReplyDTO;
import com.tripbook.service.ReplyService;

@Controller
@RequestMapping("reply")
public class ReplyController {
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping("insert")
	@ResponseBody
	public List<ReplyDTO> insert(HttpServletRequest request,ReplyDTO replyDTO){
		replyDTO.setWriter((String)request.getSession().getAttribute("userId"));
		return replyService.insert(replyDTO);
	}
}
