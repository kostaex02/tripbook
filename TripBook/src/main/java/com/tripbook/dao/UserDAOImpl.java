package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SqlSession session;
	
	@Override
	public UserDTO loginUser(UserDTO user) {
		return session.selectOne("userMapper.loginUser", user);
	}
	@Override
	public String checkUser(String userId) {
		return session.selectOne("userMapper.checkUserById",userId);
	}
	@Override
	public String selectUserIdState(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int insertUser(UserDTO user) {
		return session.insert("userMapper.insertUser", user);
	}
	@Override
	public UserDTO selectUser(String userId) {
		return session.selectOne("userMapper.selectUser",userId);
	}
	@Override
	public UserDTO selectProfile(String userId) {
		return session.selectOne("userMapper.selectProfile", userId);
	}
	@Override
	public List<UserDTO> searchUser(String userId) {
		return session.selectList("userMapper.searchUser",userId);
	}
	@Override
	public int updateUser(UserDTO userDTO) {
		return session.update("userMapper.updateUser", userDTO);
	}
	@Override
	public int deleteUser(String userId) {
		return session.delete("userMapper.deleteUser",userId);
	}
	
	
}
