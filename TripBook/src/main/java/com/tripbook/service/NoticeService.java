package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.NoticeDTO;

public interface NoticeService {
	/**
	 * ���������� ������ ��� �˸� ���
	 */
	List<NoticeDTO> selectNoticeByReceiver(String userId);
}