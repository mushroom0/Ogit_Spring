package com.acon.ogit.memberbasket.dto;

public class MemberBasketDto {
	private int seq;
	private String members_id;
	private int product_detail_seq;
	private int product_seq;
	private String product_name;
	private int bascket_count;
	
	public MemberBasketDto(){}
	
	public MemberBasketDto(int seq, String members_id, int product_detail_seq, int product_seq, String product_name,
			int bascket_count) {
		super();
		this.seq = seq;
		this.members_id = members_id;
		this.product_detail_seq = product_detail_seq;
		this.product_seq = product_seq;
		this.product_name = product_name;
		this.bascket_count = bascket_count;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getMembers_id() {
		return members_id;
	}

	public void setMembers_id(String members_id) {
		this.members_id = members_id;
	}

	public int getProduct_detail_seq() {
		return product_detail_seq;
	}

	public void setProduct_detail_seq(int product_detail_seq) {
		this.product_detail_seq = product_detail_seq;
	}

	public int getProduct_seq() {
		return product_seq;
	}

	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getBascket_count() {
		return bascket_count;
	}

	public void setBascket_count(int bascket_count) {
		this.bascket_count = bascket_count;
	}
	
	
}
