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
	
	/**
	 * 개별 공지사항 알림 출력
	 */
	List<NoticeDTO> selectMessageByAdmin();
	
	/**
	 * 새로온 공지 알림
	 */
	int countNotice(String userId);
	
	/**
	 * 알림 읽음 처리
	 */
	int readNotice(int noticeNo);
}
