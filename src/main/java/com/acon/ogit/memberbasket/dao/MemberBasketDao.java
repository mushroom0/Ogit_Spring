package com.acon.ogit.memberbasket.dao;

import java.util.List;

import com.acon.ogit.memberbasket.dto.MemberBasketDto;

public interface MemberBasketDao {
	public void insert(MemberBasketDto dto);
	public List<MemberBasketDto> getList();
	public MemberBasketDto getData(String members_id);
}
