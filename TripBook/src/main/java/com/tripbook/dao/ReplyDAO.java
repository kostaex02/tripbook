package com.tripbook.dao;

import java.util.List;

import com.tripbook.dto.ReplyDTO;

public interface ReplyDAO {
	/**
	 * 리플 입력
	 */
	int insertReply(ReplyDTO replyDTO);
	
	/**
	 * 게시판 번호에 해당하는 리플 목록 검색
	 */
	List<ReplyDTO> selectReplyByBoardNo(int boardNo);
}
