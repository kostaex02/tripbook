package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.GradeDTO;

public interface BoardDAO {
	/**
	 * �ʱ� ����ȭ�� ���� ���
	 */
	List<BoardDTO> selectBoard(Map<String,Object> map);
	
	/**
	 * �Խù� ���
	 */
	int insertBoard(BoardDTO boardDTO);
	
	/**
	 * ���̵�� ���� �ֽ��� �� �ҷ�����
	 */
	int selectBoardById(String writer);
	
	/**
	 * ���� �Խù� ���
	 */
	int insertScheduleBoard(BoardDTO boardDTO);
	
	/**
	 * ���õ� �����쿡 �ش��ϴ� �Խù��� ���
	 */
	List<BoardDTO> selectDetailBiography(Map<String, Object> map);
	
	/**
	 * ��ü �Խù� ���
	 */
	List<BoardDTO> selectBoardByAdmin();
	
	/**
	 * ���� �𸣴� ����� ����� �Խù� �ͷ�
	 */
	List<BoardDTO> selectNotFriendBoardList(Map<String, Object> map);
	
	/**
	 * ģ�� ������ �Խù� ���
	 */
	List<BoardDTO> selectFriendBoardList(Map<String, Object> map);
	
	/**
	 * ���ƿ� �˻�
	 */
	GradeDTO selectGrade(GradeDTO gradeDTO);

	/**
	 * ���ƿ� �Է�
	 */
	int insertGrade(GradeDTO gradeDTO);
	
	/**
	 * ���ƿ� ����
	 */
	int deleteGrade(GradeDTO gradeDTO);
}
