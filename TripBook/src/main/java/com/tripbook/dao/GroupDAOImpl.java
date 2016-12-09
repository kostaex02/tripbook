package com.tripbook.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.GroupDTO;

@Repository
public class GroupDAOImpl implements GroupDAO {
	@Autowired
	private SqlSession session;
	@Override
	public int insertGroup(String groupName) {
		return session.insert("groupMapper.insertGroup", groupName);
	}
	@Override
	public GroupDTO selectGroupByName(String groupName) {
		return session.selectOne("groupMapper.selectGroupByName", groupName);
	}
	@Override
	public GroupDTO selectGroupByNo(int groupNo) {
		return session.selectOne("groupMapper.selectGroupByName", groupNo);
	}

}
