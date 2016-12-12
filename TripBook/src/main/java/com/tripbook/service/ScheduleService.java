package com.tripbook.service;

import com.tripbook.dto.ScheduleDTO;

public interface ScheduleService {
	/**
	 * 스케줄 입력
	 */
	int addSchedule(ScheduleDTO scheduleDTO);
}
