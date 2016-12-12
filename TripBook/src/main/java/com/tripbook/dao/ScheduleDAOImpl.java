package com.tripbook.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.ScheduleDTO;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO{
	@Autowired
	private SqlSession session;
	
	@Override
	public int addSchedule(ScheduleDTO scheduleDTO) {
		return session.insert("scheduleMapper.insertSchedule", scheduleDTO);
	}

}
