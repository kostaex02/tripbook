package com.tripbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.NoticeDAO;
import com.tripbook.dto.NoticeDTO;
@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public List<NoticeDTO> selectNoticeByReceiver(String userId) {
		return noticeDAO.selectNoticeByReceiver(userId);
	}

	@Override
	public List<NoticeDTO> selectNoticeByAdmin() {
		return noticeDAO.selectNoticeByAdmin();
	}

	@Override
	public int insertNotice(NoticeDTO noticeDTO) {
		return noticeDAO.insertNotice(noticeDTO);
	}

	@Override
	public List<NoticeDTO> selectMessageByAdmin() {
		return noticeDAO.selectMessageByAdmin();
	}

}
