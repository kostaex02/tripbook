package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.BoardPictureDTO;

public interface BoardPictureService {
	int insertBoardPicture(BoardPictureDTO boardPictureDTO);
	List<BoardPictureDTO> selectBoardPictureByBoardNo(int BoardNo);
}
