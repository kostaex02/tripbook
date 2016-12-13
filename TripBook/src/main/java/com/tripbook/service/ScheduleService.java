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
}
