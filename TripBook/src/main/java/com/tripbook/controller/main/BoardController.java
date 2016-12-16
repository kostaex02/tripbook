package com.tripbook.controller.main;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tripbook.dto.BoardDTO;
import com.tripbook.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("insert")
	@ResponseBody
	public int insert(HttpServletRequest request,BoardDTO boardDTO,String keyword,String address,ArrayList<MultipartFile> file){
		System.out.println(boardDTO);
		System.out.println(keyword);
		System.out.println(address);
		System.out.println(file);
		return 0;
	}
}
