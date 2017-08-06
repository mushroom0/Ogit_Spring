package com.acon.ogit.codi.dto;

public class CodiCommentDto {
	private int re_no;
	private int codi_seq;
	private String nickname;
	private String content;
	private String regi_date;
	private String update_date;
	private String delete_date;
	private String delete_reason;
	private String likes;
	
	public CodiCommentDto(){}
	
	public CodiCommentDto(int re_no, int codi_seq, String nickname, String content, String regi_date,
			String update_date, String delete_date, String delete_reason, String likes) {
		super();
		this.re_no = re_no;
		this.codi_seq = codi_seq;
		this.nickname = nickname;
		this.content = content;
		this.regi_date = regi_date;
		this.update_date = update_date;
		this.delete_date = delete_date;
		this.delete_reason = delete_reason;
		this.likes = likes;
	}

	public int getRe_no() {
		return re_no;
	}

	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}

	public int getCodi_seq() {
		return codi_seq;
	}

	public void setCodi_seq(int codi_seq) {
		this.codi_seq = codi_seq;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegi_date() {
		return regi_date;
	}

	public void setRegi_date(String regi_date) {
		this.regi_date = regi_date;
	}

	public String getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}

	public String getDelete_date() {
		return delete_date;
	}

	public void setDelete_date(String delete_date) {
		this.delete_date = delete_date;
	}

	public String getDelete_reason() {
		return delete_reason;
	}

	public void setDelete_reason(String delete_reason) {
		this.delete_reason = delete_reason;
	}

	public String getLikes() {
		return likes;
	}

	public void setLikes(String likes) {
		this.likes = likes;
	}
	
	
}
