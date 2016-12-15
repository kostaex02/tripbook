package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.NoticeDTO;

public interface NoticeService {
	/**
	 * 공지사항을 제외한 모든 알림 출력
	 */
	List<NoticeDTO> selectNoticeByReceiver(String userId);
	
	/**
	 * 공지사항 알림 출력
	 */
	List<NoticeDTO> selectNoticeByAdmin();
	
	/**
	 * 알림 입력
	 */
	int insertNotice(NoticeDTO noticeDTO);
}
