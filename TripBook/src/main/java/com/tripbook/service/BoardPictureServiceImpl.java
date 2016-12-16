package com.tripbook.service;

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
		boardpictureDAO.insertBoardPicture(boardPictureDTO);
		return 0;
	}

}
