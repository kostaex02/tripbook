package com.tripbook.dto;

public class ReplyDTO {
	private int replyNo;
	private String content;
	private String writerDate;
	private String writer;
	private int boardNo;
	private UserDTO user;
	
	@Override
	public String toString() {
		return "ReplyDTO [replyNo=" + replyNo + ", content=" + content + ", writerDate=" + writerDate + ", writer="
				+ writer + ", boardNo=" + boardNo + ", user=" + user + "]";
	}
	public UserDTO getUser() {
		return user;
	}
	public void setUser(UserDTO user) {
		this.user = user;
	}
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriterDate() {
		return writerDate;
	}
	public void setWriterDate(String writerDate) {
		this.writerDate = writerDate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
}
