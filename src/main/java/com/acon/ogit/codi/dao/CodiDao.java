package com.acon.ogit.codi.dao;

import java.util.List;

import com.acon.ogit.codi.dto.CodiDto;

public interface CodiDao {
	public void insert(CodiDto dto);
	public List<CodiDto> getList();
	public CodiDto getData(int seq);
	public String getName(String members_id);
}
