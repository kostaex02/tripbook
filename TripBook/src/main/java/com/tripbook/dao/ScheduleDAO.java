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
	
	/**
	 * 일정 삭제
	 */
	int deleteSchedule(int scheduleNo);
	
	/**
	 * 일정 선택
	 */
	ScheduleDTO selectScheduleByNo(int scheduleNo);
	
	/**
	 * 일정 수정
	 */
	int updateSchedule(ScheduleDTO scheduleDTO);
}
