package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.UserDTO;

public interface UserDAO {
	/**
	 * id, password를 이용해서 로그인 하기
	 */
	UserDTO loginUser(UserDTO user);
	
	/**
	 * 해당 id 검색 될떄 검색된 row의 name값 출력
	 */
	String checkUser(String userId);
	
	/**
	 * id,state를 이용한 이름 검색
	 */
	String selectUserIdState(Map<String, String> map);
	
	/**
	 * 검색된 리스트의 값이 자신의 값과 친구들을 제외한 모든 값을 출력
	 */
	List<UserDTO> searchUser(Map<String, String> map);
	
	int insertUser(UserDTO user);
	
	UserDTO selectUser(String userId);

	UserDTO selectProfile(String userId);

	int updateUser(UserDTO userDTO);

	int deleteUser(String userId);

}
