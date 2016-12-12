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
	
	/**
	 * 공지사항 알림 출력
	 */
	List<NoticeDTO> selectNoticeByAdmin();
	
	/**
	 * 공지사항 지우기
	 */
	int deleteNoticeByNo(int noticeNo);
	
	/**
	 * no로 공지사항 검색
	 */
	NoticeDTO selectNoticeById(int noticeNo);
	
	/**
	 * 이미 신청된 사항인지 확인
	 */
	String checkNotice(NoticeDTO noticeDTO);
}
