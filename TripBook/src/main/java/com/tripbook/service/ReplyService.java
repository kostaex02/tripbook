package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.ReplyDTO;

public interface ReplyService {
	/**
	 * ���� �Է��� ���� ��ü ����Ʈ ���
	 * @param replyDTO
	 * @return
	 */
	List<ReplyDTO> insert(ReplyDTO replyDTO);
}
