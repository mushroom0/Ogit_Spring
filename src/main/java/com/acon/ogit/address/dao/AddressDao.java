package com.acon.ogit.address.dao;



import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.address.dto.AddressDto;

public interface AddressDao {
	public void insert(AddressDto dto);
	public List<AddressDto> getList();
	public AddressDto getData(int seq);
}
