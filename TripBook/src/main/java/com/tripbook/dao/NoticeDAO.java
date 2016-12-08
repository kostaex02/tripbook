package com.tripbook.dao;

import com.tripbook.dto.NoticeDTO;

public interface NoticeDAO {
	/**
	 * 알림 입력
	 */
	int insertNotice(NoticeDTO noticeDTO);
}
