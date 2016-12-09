package com.tripbook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.NoticeDTO;
@Repository
public class NoticeDAOImpl implements NoticeDAO {
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertNotice(NoticeDTO noticeDTO) {
		return session.insert("noticeMapper.insertNotice", noticeDTO);
	}

	@Override
	public List<NoticeDTO> selectNoticeByReceiver(String userId) {
		return session.selectList("noticeMapper.selectNoticeByReceiver", userId);
	}

	@Override
	public List<NoticeDTO> selectNoticeByAdmin() {
		return session.selectList("noticeMapper.selectNoticeByAdmin");
	}

}
