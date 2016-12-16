package com.tripbook.dto;

public class BoardPictureDTO {
	private int boardPictureNo;
	private String fileName;
	private int boardNo;
	
	public BoardPictureDTO() {
		super();
	}
	public BoardPictureDTO(String fileName, int boardNo) {
		super();
		this.fileName = fileName;
		this.boardNo = boardNo;
	}
	public int getBoardPictureNo() {
		return boardPictureNo;
	}
	public void setBoardPictureNo(int boardPictureNo) {
		this.boardPictureNo = boardPictureNo;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	
}
