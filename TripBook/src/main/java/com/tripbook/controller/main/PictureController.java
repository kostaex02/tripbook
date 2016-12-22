package com.tripbook.controller.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tripbook.dto.BoardPictureDTO;
import com.tripbook.service.BoardPictureService;

@Controller
@RequestMapping("picture")
public class PictureController {
	@Autowired
	private BoardPictureService boardPictureService;
	
	@RequestMapping("detail")
	@ResponseBody
	public List<BoardPictureDTO> detail(HttpServletRequest request,int boardNo){
		return boardPictureService.selectBoardPictureByBoardNo(boardNo);
	}
}
