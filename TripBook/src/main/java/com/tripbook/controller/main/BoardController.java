package com.tripbook.controller.main;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.BoardPictureDTO;
import com.tripbook.dto.GeneralBoardForm;
import com.tripbook.dto.ScheduleDTO;
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
		boardDTO.setContent(boardDTO.getContent().replace("\r\n","<br>"));
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
					try {
						mf.transferTo(new File(saveDir+mf.getOriginalFilename()));
						boardPictureService.insertBoardPicture(new BoardPictureDTO(mf.getOriginalFilename(), boardNo));
					} catch (IllegalStateException | IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
		return "redirect:/main/home";
	}
	
	@RequestMapping("insertEditScheduleBoard")
	public String insertEditScheduleBoard(HttpServletRequest request,BoardDTO boardDTO,ScheduleDTO scheduleDTO,String keyword,String address,GeneralBoardForm file){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		boardDTO.setWriter(userId);
		boardDTO.setContent(boardDTO.getContent().replace("\r\n","<br>"));
		if(boardDTO.getLocation().equals("10")){
			boardDTO.setLocation(null);
			boardDTO.setLocationLat(0);
			boardDTO.setLocationLng(0);	
		}
		scheduleDTO.setWriter(userId);
		int boardNo = boardService.insertEditScheduleBoard(boardDTO,scheduleDTO,keyword,address);
		System.out.println(boardNo);
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
					try {
						mf.transferTo(new File(saveDir+mf.getOriginalFilename()));
						boardPictureService.insertBoardPicture(new BoardPictureDTO(mf.getOriginalFilename(), boardNo));
					} catch (IllegalStateException | IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
		return "redirect:/main/home";
	}
	
	@RequestMapping("insertAddScheduleBoard")
	public String insertAddScheduleBoard(HttpServletRequest request,BoardDTO boardDTO,String keyword,String address,GeneralBoardForm file){
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		boardDTO.setWriter(userId);
		boardDTO.setContent(boardDTO.getContent().replace("\r\n","<br>"));
		if(boardDTO.getLocation().equals("10")){
			boardDTO.setLocation(null);
			boardDTO.setLocationLat(0);
			boardDTO.setLocationLng(0);	
		}
		int boardNo = boardService.insertBoard(boardDTO, keyword, address);
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
					try {
						mf.transferTo(new File(saveDir+mf.getOriginalFilename()));
						boardPictureService.insertBoardPicture(new BoardPictureDTO(mf.getOriginalFilename(), boardNo));
					} catch (IllegalStateException | IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
		return "redirect:/main/home";
	}
}
