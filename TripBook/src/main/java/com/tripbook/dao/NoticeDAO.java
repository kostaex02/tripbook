package com.tripbook.dao;

import java.util.List;

import com.tripbook.dto.NoticeDTO;

public interface NoticeDAO {
	/**
	 * 알림 입력
	 */
	int insertNotice(NoticeDTO noticeDTO);
	
	/**
	 * 공지사항을 제외한 모든 알림 출력
	 */
	List<NoticeDTO> selectNoticeByReceiver(String userId);
}
