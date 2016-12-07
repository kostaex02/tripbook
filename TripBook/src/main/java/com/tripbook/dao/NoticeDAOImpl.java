package com.tripbook.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class NoticeDAOImpl implements NoticeDAO {
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertNotice(Map<String, String> map) {
		return session.insert("noticeMapper.insertNotice", map);
	}

}
