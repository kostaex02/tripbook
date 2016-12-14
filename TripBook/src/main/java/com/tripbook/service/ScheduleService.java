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
}
