package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.ReplyDTO;

public interface ReplyService {
	/**
	 * 리플 입력후 리플 전체 리스트 출력
	 * @param replyDTO
	 * @return
	 */
	List<ReplyDTO> insert(ReplyDTO replyDTO);
}
