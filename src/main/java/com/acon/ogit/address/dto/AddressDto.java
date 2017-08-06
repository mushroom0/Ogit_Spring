package com.acon.ogit.address.dto;

public class AddressDto {
	
	private int seq;
	private String members_id;
	private String name;
	private String recipient_name;
	private String recipient_phone;
	private String zipcode;
	private String address;
	private String address_detail;
	private int is_default;
	private String regist_date;
	private String update_date;
	
	public AddressDto(){}

	public AddressDto(int seq, String members_id, String name, String recipient_name, String recipient_phone,
			String zipcode, String address, String address_detail, int is_default, String regist_date,
			String update_date) {
		super();
		this.seq = seq;
		this.members_id = members_id;
		this.name = name;
		this.recipient_name = recipient_name;
		this.recipient_phone = recipient_phone;
		this.zipcode = zipcode;
		this.address = address;
		this.address_detail = address_detail;
		this.is_default = is_default;
		this.regist_date = regist_date;
		this.update_date = update_date;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRecipient_name() {
		return recipient_name;
	}

	public void setRecipient_name(String recipient_name) {
		this.recipient_name = recipient_name;
	}

	public String getRecipient_phone() {
		return recipient_phone;
	}

	public void setRecipient_phone(String recipient_phone) {
		this.recipient_phone = recipient_phone;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress_detail() {
		return address_detail;
	}

	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}

	public int getIs_default() {
		return is_default;
	}

	public void setIs_default(int is_default) {
		this.is_default = is_default;
	}

	public String getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(String regist_date) {
		this.regist_date = regist_date;
	}

	public String getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	
	
}
