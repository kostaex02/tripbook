package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.BoardDTO;

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
}
