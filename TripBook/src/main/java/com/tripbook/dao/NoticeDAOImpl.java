package com.tripbook.dao;

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

}
