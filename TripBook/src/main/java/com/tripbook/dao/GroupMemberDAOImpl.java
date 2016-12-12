package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.GroupMemberDTO;
import com.tripbook.dto.UserDTO;
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
	@Override
	public List<UserDTO> selectGroupMemberByNo(Map<String,Object> map) {
		return session.selectList("groupMemberMapper.selectGroupMemberByNo", map);
	}
	@Override
	public int deleteGroupMember(Map<String, Object> map) {
		return session.delete("groupMemberMapper.deleteGroupMember", map);
	}

}
