package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.ScheduleDTO;

public interface BoardService {
	/**
	 * 사용자 아이디에 해당하는 게시물 출력
	 */
	List<BoardDTO> selectBoard(String userId);

	/**
	 * 게시물 등록
	 */
	int insertBoard(BoardDTO boardDTO, String keyword, String address);
	
	/**
	 *  일정 등록후 게시글 입력
	 */
	int insertEditScheduleBoard(BoardDTO boardDTO, ScheduleDTO scheduleDTO, String keyword, String address);
	
	/**
	 * 일정에 해당하는 리스트 불러오기
	 */
	List<BoardDTO> selectDetailBiography(String userId, int scheduleNo);

	/**
	 * 전체 게시물 검색
	 */
	List<BoardDTO> selectBoardByAdmin();
}
