package com.tripbook.controller.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.BoardPictureDTO;
import com.tripbook.dto.NoticeDTO;
import com.tripbook.service.BoardService;
import com.tripbook.service.NoticeService;

@Controller
@RequestMapping("main")
public class MainController {
	@Autowired
	private BoardService boardService;
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("{pageName}")
	public void page(HttpServletRequest request){}

	/* �α׾ƿ� */
	@RequestMapping("logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "home";
	}
	
	@RequestMapping("home")
	public ModelAndView home(HttpServletRequest request){
		String userId = (String)request.getSession().getAttribute("userId");
		ModelAndView mv = new ModelAndView("main/main");
		List<BoardDTO> list = boardService.selectBoard(userId);
		for(BoardDTO b:list){
			System.out.println(b);
			for(BoardPictureDTO bp:b.getBoardPictures()){
				System.out.println(bp);
			}
		}
		mv.addObject("boardList", list);
		return mv;
	}
	
	@RequestMapping("send")
	@ResponseBody
	public int send(HttpServletRequest request,NoticeDTO noticeDTO){
		String userId = (String)request.getSession().getAttribute("userId");
		noticeDTO.setSender(userId);
		noticeDTO.setState("4");
		return noticeService.insertNotice(noticeDTO);
	}
}
