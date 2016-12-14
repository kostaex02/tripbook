package com.tripbook.dto;

import java.util.List;

public class BoardDTO {
	private int boardNo;
	private String content;
	private String tripDate;
	private String location;
	private double locationLat;
	private double locationLng;
	private String writer;
	private int state;
	private int scheduleNo;
	private UserDTO user;
	private List<ReplyDTO> replys;
	private List<BoardPictureDTO> boardPictures;
	
	
	public UserDTO getUser() {
		return user;
	}
	public void setUser(UserDTO user) {
		this.user = user;
	}
	public List<ReplyDTO> getReplys() {
		return replys;
	}
	public void setReplys(List<ReplyDTO> replys) {
		this.replys = replys;
	}
	public List<BoardPictureDTO> getBoardPictures() {
		return boardPictures;
	}
	public void setBoardPictures(List<BoardPictureDTO> boardPictures) {
		this.boardPictures = boardPictures;
	}
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
	public double getLocationLat() {
		return locationLat;
	}
	public void setLocationLat(double locationLat) {
		this.locationLat = locationLat;
	}
	public double getLocationLng() {
		return locationLng;
	}
	public void setLocationLng(double locationLng) {
		this.locationLng = locationLng;
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
