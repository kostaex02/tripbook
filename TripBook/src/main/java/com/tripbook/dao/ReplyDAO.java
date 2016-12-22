package com.tripbook.dao;

import java.util.List;

import com.tripbook.dto.ReplyDTO;

public interface ReplyDAO {
	/**
	 * ���� �Է�
	 */
	int insertReply(ReplyDTO replyDTO);
	
	/**
	 * �Խ��� ��ȣ�� �ش��ϴ� ���� ��� �˻�
	 */
	List<ReplyDTO> selectReplyByBoardNo(int boardNo);
}
