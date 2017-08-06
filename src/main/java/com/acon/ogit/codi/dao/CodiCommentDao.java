package com.acon.ogit.codi.dao;

import java.util.List;

import com.acon.ogit.codi.dto.CodiCommentDto;

public interface CodiCommentDao {
	public void insert(CodiCommentDto dto);
	public List<CodiCommentDto> getList(int codi_seq);
	public int getSequence();
}
