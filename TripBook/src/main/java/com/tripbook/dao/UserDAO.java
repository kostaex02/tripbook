package com.tripbook.dao;

import java.util.List;

import com.tripbook.dto.UserDTO;

public interface UserDAO {
	/**
	 * user 값을 이용해서 user 찾기
	 * */
	UserDTO selectUser(UserDTO user);

	String checkUser(String userId);

	int insertUser(UserDTO user);
	
	UserDTO selectUser(String userId);

	UserDTO selectProfile(String userId);

	List<UserDTO> searchUser(String userId);

	int updateUser(UserDTO userDTO);
}
