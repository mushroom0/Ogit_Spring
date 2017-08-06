package com.acon.ogit.address.service;

import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.address.dto.AddressDto;

public interface AddressService {
	
	public void insert(AddressDto dto);
	public ModelAndView list(String members_id);
	public ModelAndView detail(int seq);
}
