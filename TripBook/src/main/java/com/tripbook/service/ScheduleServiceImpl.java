package com.tripbook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.ScheduleDAO;
import com.tripbook.dto.ScheduleDTO;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	private ScheduleDAO scheduleDAO;
	
	@Override
	public int addSchedule(ScheduleDTO scheduleDTO) {
		return scheduleDAO.addSchedule(scheduleDTO);
	}

}
