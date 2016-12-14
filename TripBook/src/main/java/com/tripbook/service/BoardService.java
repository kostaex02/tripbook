package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.BoardDTO;

public interface BoardService {
	/**
	 * 사용자 아이디에 해당하는 게시물 출력
	 */
	List<BoardDTO> selectBoard(String userId);
}
