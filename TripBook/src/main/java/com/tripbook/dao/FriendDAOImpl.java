package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.FriendDTO;

@Repository
public class FriendDAOImpl implements FriendDAO {
	@Autowired
	private SqlSession session;
	
	@Override
	public List<FriendDTO> selectFriend(Map<String,String> friendMap) {
		return session.selectList("friendMapper.selectFriend", friendMap);
	}
	@Override
	public int insertFriend(Map<String, String> map) {
		return session.insert("friendMapper.insertFriend", map);
	}
	@Override
	public String selectFriendOnly(Map<String, String> map) {
		return session.selectOne("friendMapper.selectFriendOnly", map);
	}

}
