package com.tripbook.dto;

public class BoardDTO {
	private int boardNo;
	private String content;
	private String tripDate;
	private String location;
	private double location_lat;
	private double location_lng;
	private String writer;
	private int state;
	private int scheduleNo;
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTripDate() {
		return tripDate;
	}
	public void setTripDate(String tripDate) {
		this.tripDate = tripDate;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public double getLocation_lat() {
		return location_lat;
	}
	public void setLocation_lat(double location_lat) {
		this.location_lat = location_lat;
	}
	public double getLocation_lng() {
		return location_lng;
	}
	public void setLocation_lng(double location_lng) {
		this.location_lng = location_lng;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getScheduleNo() {
		return scheduleNo;
	}
	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}
}
