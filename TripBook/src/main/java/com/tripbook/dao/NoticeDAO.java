package com.tripbook.dao;

import java.util.List;

import com.tripbook.dto.NoticeDTO;

public interface NoticeDAO {
	/**
	 * �˸� �Է�
	 */
	int insertNotice(NoticeDTO noticeDTO);
	
	/**
	 * ���������� ������ ��� �˸� ���
	 */
	List<NoticeDTO> selectNoticeByReceiver(String userId);
	
	/**
	 * �������� �˸� ���
	 */
	List<NoticeDTO> selectNoticeByAdmin();
}
