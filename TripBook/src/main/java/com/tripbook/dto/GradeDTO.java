package com.tripbook.dto;

public class GradeDTO {
	private int gradeNo;
	private int grade;
	private String id;
	private int boardNo;
	public GradeDTO() {
		super();
	}
	public GradeDTO(String id, int boardNo) {
		super();
		this.grade=1;
		this.id = id;
		this.boardNo = boardNo;
	}
	public int getGradeNo() {
		return gradeNo;
	}
	public void setGradeNo(int gradeNo) {
		this.gradeNo = gradeNo;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	@Override
	public String toString() {
		return "GradeDTO [gradeNo=" + gradeNo + ", grade=" + grade + ", id=" + id + ", boardNo=" + boardNo + "]";
	}
}
