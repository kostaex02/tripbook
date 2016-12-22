package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.GeneralBoardForm;
import com.tripbook.dto.ScheduleDTO;

public interface BoardService {
	/**
	 * ����� ���̵� �ش��ϴ� �Խù� ���
	 */
	List<BoardDTO> selectBoard(String userId);

	/**
	 * �Խù� ���
	 */
	int insertBoard(BoardDTO boardDTO, String keyword, String address);
	
	/**
	 *  ���� ����� �Խñ� �Է�
	 */
	int insertEditScheduleBoard(BoardDTO boardDTO, ScheduleDTO scheduleDTO, String keyword, String address);
}
