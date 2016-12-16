package com.tripbook.controller.main;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.BoardPictureDTO;
import com.tripbook.dto.GeneralBoardForm;
import com.tripbook.service.BoardPictureService;
import com.tripbook.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	@Autowired
	private BoardPictureService boardPictureService;
	
	@RequestMapping("insert")
	public String insert(HttpServletRequest request,BoardDTO boardDTO,String keyword,String address,GeneralBoardForm file){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		boardDTO.setWriter(userId);
		if(boardDTO.getLocation().equals("10")){
			boardDTO.setLocation(null);
			boardDTO.setLocationLat(0);
			boardDTO.setLocationLng(0);	
		}
		int boardNo = boardService.insertBoard(boardDTO,keyword,address);
		if(boardNo>0){
			String saveDir = request.getSession().getServletContext().getRealPath("/tripbook/board/"+boardNo+"/");
			File folder = new File(saveDir);
			if (!folder.exists()) {
				folder.mkdirs();
			}else{
				if(folder.listFiles()!=null){
					for(File f:folder.listFiles()){
						f.delete();
					}
					folder.delete();
					folder.mkdir();
				}
			}
			if(file.getFile()!=null&&file.getFile().size()>0&&file.getFile().get(0).getOriginalFilename().length()>0){
				for(MultipartFile mf:file.getFile()){
					if(boardPictureService.insertBoardPicture(new BoardPictureDTO(mf.getOriginalFilename(), boardNo))>0){
						try {
							mf.transferTo(new File(saveDir+mf.getOriginalFilename()));
						} catch (IllegalStateException | IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			}
		}
		return "main/main";
	}
}
