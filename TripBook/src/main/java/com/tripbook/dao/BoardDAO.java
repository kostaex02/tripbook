package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.GradeDTO;

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
	
	/**
	 * 선택된 스케쥴에 해당하는 게시물들 출력
	 */
	List<BoardDTO> selectDetailBiography(Map<String, Object> map);
	
	/**
	 * 전체 게시물 출력
	 */
	List<BoardDTO> selectBoardByAdmin();
	
	/**
	 * 서로 모르는 사람일 경우의 게시물 촐력
	 */
	List<BoardDTO> selectNotFriendBoardList(Map<String, Object> map);
	
	/**
	 * 친구 사이의 게시물 출력
	 */
	List<BoardDTO> selectFriendBoardList(Map<String, Object> map);
	
	/**
	 * 좋아요 검색
	 */
	GradeDTO selectGrade(GradeDTO gradeDTO);

	/**
	 * 좋아요 입력
	 */
	int insertGrade(GradeDTO gradeDTO);
	
	/**
	 * 좋아요 삭제
	 */
	int deleteGrade(GradeDTO gradeDTO);
}
