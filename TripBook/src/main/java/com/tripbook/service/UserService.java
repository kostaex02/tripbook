package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.UserDTO;

public interface UserService {
	/**
	 * userDAO를 이용해서 로그인
	 */
	UserDTO login(UserDTO user);
	
	/**
	 * 아이디의 가입 유무 체크
	 * 0:가입 가능, 1:아이디 존재
	 */
	int checkId(String userId);
	
	/**
	 * 가입
	 */
	int register(UserDTO user);
	
	/**
	 * 유저 전체 정보 출력
	 */
	UserDTO selectProfile(String userId);
	
	/**
	 * 검색된 사람과 친구 제외한 나머지 사람 검색
	 **/
	List<UserDTO> searchUser(String userId, String keyword);
	
	/**
	 * 유저 정보 수정
	 */
	int updateUser(UserDTO userDTO);
	
	/**
	 * 유저 삭제
	 */
	int deleteUser(String userId);
	
	/**
	 * id,state값을 이용하여 아이디 검색
	 */
	int selectIdState(String userId, String state);
}
