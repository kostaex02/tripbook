package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.BoardDTO;

public interface BoardDAO {
	/**
	 * 초기 바탕화면 보드 출력
	 */
	List<BoardDTO> selectBoard(Map<String,Object> map);
}
