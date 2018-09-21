package test.lecture;

import java.sql.Date;

public class lectureDto {

	private int lecture_seq;
	private String lecture_group;
	private String lecture_name;
	private String lecture_content;
	private String lecture_id;
	private String lecture_video;
	private Date lecture_date;

	public int getLecture_seq() {
		return lecture_seq;
	}

	public void setLecture_seq(int lecture_seq) {
		this.lecture_seq = lecture_seq;
	}

	public String getLecture_group() {
		return lecture_group;
	}

	public void setLecture_group(String lecture_group) {
		this.lecture_group = lecture_group;
	}

	public String getLecture_name() {
		return lecture_name;
	}

	public void setLecture_name(String lecture_name) {
		this.lecture_name = lecture_name;
	}

	public String getLecture_content() {
		return lecture_content;
	}

	public void setLecture_content(String lecture_content) {
		this.lecture_content = lecture_content;
	}

	public String getLecture_id() {
		return lecture_id;
	}

	public void setLecture_id(String lecture_id) {
		this.lecture_id = lecture_id;
	}

	public String getLecture_video() {
		return lecture_video;
	}

	public void setLecture_video(String lecture_video) {
		this.lecture_video = lecture_video;
	}

	public Date getLecture_date() {
		return lecture_date;
	}

	public void setLecture_date(Date lecture_date) {
		this.lecture_date = lecture_date;
	}

}

