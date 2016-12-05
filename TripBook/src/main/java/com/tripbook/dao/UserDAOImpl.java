package com.tripbook.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {
	private SqlSession session;
	@Override
	public UserDTO selectUser(UserDTO user) {
		return session.selectOne("userMapper.selectUserById", user);
	}
	@Override
	public String checkUser(String userId) {
		return session.selectOne("userMapper.checkUserById",userId);
	}
	@Override
	public int insertUser(UserDTO user) {
		return session.insert("userMapper.insertUser", user);
	}

}
