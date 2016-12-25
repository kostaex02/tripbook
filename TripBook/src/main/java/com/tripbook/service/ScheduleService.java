package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.ScheduleDTO;

public interface ScheduleService {
	/**
	 * 스케줄 입력
	 */
	int addSchedule(ScheduleDTO scheduleDTO);
	
	/**
	 * 달력에 띄워져야하는 모든것!
	 */
	List<ScheduleDTO> selectSchedule(String userId);
	
	/**
	 * 달력에 저장되어있는 스케줄 삭제
	 */
	int deleteSchedule(int scheduleNo, String userId);
	
	/**
	 * 스케줄 수정
	 */
	int updateSchedule(int scheduleNo, String startDate, String endDate, String userId);
	
	/**
	 * 스케줄 번호로 스케줄 검색
	 */
	ScheduleDTO selectScheduleByNo(int scheduleNo);
	
	/**
	 * 일대기 자신 리스트 출력
	 */
	List<ScheduleDTO> selectBiography(String userId);
	
	/**
	 * 일대기 친구 리스트 출력
	 */
	List<ScheduleDTO> selectFriendBiography(String userId, String friendId, String state);
	
	/**
	 * 여행 검색
	 */
	List<ScheduleDTO> searchBiography(String keyword);
}
