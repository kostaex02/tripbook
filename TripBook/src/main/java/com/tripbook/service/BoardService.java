package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.BoardDTO;

public interface BoardService {
	/**
	 * ����� ���̵� �ش��ϴ� �Խù� ���
	 */
	List<BoardDTO> selectBoard(String userId);
}
