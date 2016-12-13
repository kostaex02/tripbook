package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.ScheduleDTO;

public interface ScheduleDAO {
	/**
	 * 일정 등록
	 */
	int addSchedule(ScheduleDTO scheduleDTO);

	/**
	 * 일정 출력
	 */
	List<ScheduleDTO> selectSchedule(Map<String, Object> map);
}
