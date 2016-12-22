package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.BoardDTO;

public interface BoardDAO {
	/**
	 * 초기 바탕화면 보드 출력
	 */
	List<BoardDTO> selectBoard(Map<String,Object> map);
	
	/**
	 * 게시물 등록
	 */
	int insertBoard(BoardDTO boardDTO);
	
	/**
	 * 아이디로 가장 최신의 글 불러오기
	 */
	int selectBoardById(String writer);
	
	/**
	 * 여행 게시물 등록
	 */
	int insertScheduleBoard(BoardDTO boardDTO);
}
