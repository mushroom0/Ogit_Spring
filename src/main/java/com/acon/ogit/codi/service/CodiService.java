package com.acon.ogit.codi.service;

import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.codi.dto.CodiCommentDto;
import com.acon.ogit.codi.dto.CodiDto;

public interface CodiService {
	public void insert(CodiDto dto);
	public ModelAndView list();
	public ModelAndView detail(int seq);
	public void commentInsert(CodiCommentDto dto);
	public String getName(String members_id);
}
