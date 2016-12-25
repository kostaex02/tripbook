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

	@Override
	public int deleteNoticeByNo(int noticeNo) {
		return session.delete("noticeMapper.deleteNoticeByNo", noticeNo);
	}

	@Override
	public NoticeDTO selectNoticeById(int noticeNo) {
		return session.selectOne("noticeMapper.selectNoticeByNo", noticeNo);
	}

	@Override
	public String checkNotice(NoticeDTO noticeDTO) {
		return session.selectOne("noticeMapper.checkNotice", noticeDTO);
	}

	@Override
	public List<NoticeDTO> selectMessageByAdmin() {
		return session.selectList("noticeMapper.selectMessageByAdmin");
	}

	@Override
	public int readNotice(int noticeNo) {
		return session.update("noticeMapper.readNotice", noticeNo);
	}

	@Override
	public List<NoticeDTO> selectNotReadNoticeByReceiver(String userId) {
		return session.selectList("noticeMapper.selectNotReadNoticeByReceiver", userId);
	}

}
