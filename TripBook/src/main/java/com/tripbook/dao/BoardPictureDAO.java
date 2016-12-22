package com.tripbook.dao;

import java.util.List;

import com.tripbook.dto.BoardPictureDTO;

public interface BoardPictureDAO {
	int insertBoardPicture(BoardPictureDTO boardPictureDTO);
	List<BoardPictureDTO> selectBoardPictureByBoardNo(int boardNo);
}
