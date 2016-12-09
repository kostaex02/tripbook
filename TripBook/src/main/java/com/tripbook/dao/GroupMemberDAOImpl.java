package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class GroupMemberDAOImpl implements GroupMemberDAO{
	@Autowired
	private SqlSession session;
	@Override
	public int insertGroupMember(Map<String, Object> map) {
		return session.insert("groupMemberMapper.insertGroupMember", map);
	}
	@Override
	public List<Integer> selectGroupMember(String userId) {
		return session.selectList("groupMemberMapper.selectGroupMember", userId);
	}

}
