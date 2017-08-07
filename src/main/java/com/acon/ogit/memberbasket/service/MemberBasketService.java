package com.acon.ogit.memberbasket.service;

import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.memberbasket.dto.MemberBasketDto;


public interface MemberBasketService {
	public void insert(MemberBasketDto dto);
	public ModelAndView getList();
	public ModelAndView detail(String members_id);
}
