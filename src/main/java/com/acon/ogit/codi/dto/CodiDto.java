package com.acon.ogit.codi.dto;

public class CodiDto {
	private String seq;
	private String members_id;
	private String category;
	private String name;
	private String writer;
	private String image_name;
	private String image_src;
	private String image_size;
	private int o_item_no;
	private int t_item_no;
	private int b_item_no;
	private int s_item_no;
	private int g_item_no;
	private int a_item_no;
	private String info;
	private int price;
	private int liked;
	private String regist_date;
	private String delete_date;
	
	public CodiDto(){}
	
	public CodiDto(String seq, String members_id, String category, String name, String writer, String image_name,
			String image_src, String image_size, int o_item_no, int t_item_no, int b_item_no, int s_item_no,
			int g_item_no, int a_item_no, String info, int price, int liked, String regist_date, String delete_date) {
		super();
		this.seq = seq;
		this.members_id = members_id;
		this.category = category;
		this.name = name;
		this.writer = writer;
		this.image_name = image_name;
		this.image_src = image_src;
		this.image_size = image_size;
		this.o_item_no = o_item_no;
		this.t_item_no = t_item_no;
		this.b_item_no = b_item_no;
		this.s_item_no = s_item_no;
		this.g_item_no = g_item_no;
		this.a_item_no = a_item_no;
		this.info = info;
		this.price = price;
		this.liked = liked;
		this.regist_date = regist_date;
		this.delete_date = delete_date;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getMembers_id() {
		return members_id;
	}

	public void setMembers_id(String members_id) {
		this.members_id = members_id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	public String getImage_src() {
		return image_src;
	}

	public void setImage_src(String image_src) {
		this.image_src = image_src;
	}

	public String getImage_size() {
		return image_size;
	}

	public void setImage_size(String image_size) {
		this.image_size = image_size;
	}

	public int getO_item_no() {
		return o_item_no;
	}

	public void setO_item_no(int o_item_no) {
		this.o_item_no = o_item_no;
	}

	public int getT_item_no() {
		return t_item_no;
	}

	public void setT_item_no(int t_item_no) {
		this.t_item_no = t_item_no;
	}

	public int getB_item_no() {
		return b_item_no;
	}

	public void setB_item_no(int b_item_no) {
		this.b_item_no = b_item_no;
	}

	public int getS_item_no() {
		return s_item_no;
	}

	public void setS_item_no(int s_item_no) {
		this.s_item_no = s_item_no;
	}

	public int getG_item_no() {
		return g_item_no;
	}

	public void setG_item_no(int g_item_no) {
		this.g_item_no = g_item_no;
	}

	public int getA_item_no() {
		return a_item_no;
	}

	public void setA_item_no(int a_item_no) {
		this.a_item_no = a_item_no;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getLiked() {
		return liked;
	}

	public void setLiked(int liked) {
		this.liked = liked;
	}

	public String getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(String regist_date) {
		this.regist_date = regist_date;
	}

	public String getDelete_date() {
		return delete_date;
	}

	public void setDelete_date(String delete_date) {
		this.delete_date = delete_date;
	}
	
	
	
}