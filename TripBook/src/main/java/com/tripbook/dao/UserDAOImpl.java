package com.tripbook.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {
	private SqlSession session;
	@Override
	public UserDTO selectUser(String userId) {
		return session.selectOne("userMapper.selectUserById", userId);
	}

}