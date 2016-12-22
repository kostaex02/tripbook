package com.tripbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.BoardPictureDAO;
import com.tripbook.dto.BoardPictureDTO;
@Service
public class BoardPictureServiceImpl implements BoardPictureService {
	@Autowired
	private BoardPictureDAO boardpictureDAO;
	@Override
	public int insertBoardPicture(BoardPictureDTO boardPictureDTO) {
		return boardpictureDAO.insertBoardPicture(boardPictureDTO);
	}
	@Override
	public List<BoardPictureDTO> selectBoardPictureByBoardNo(int boardNo) {
		return boardpictureDAO.selectBoardPictureByBoardNo(boardNo);
	}

}
