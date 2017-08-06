package com.acon.ogit.address.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.address.dao.AddressDao;
import com.acon.ogit.address.dto.AddressDto;

@Service
public class AddressServiceImpl implements AddressService{
	
	@Autowired
	private AddressDao addressDao;

	@Override
	public void insert(AddressDto dto) {
		addressDao.insert(dto);
	}

	@Override
	public ModelAndView list(String members_id) {
		List<AddressDto> list=addressDao.getList(members_id);
		ModelAndView mView=new ModelAndView();
		mView.addObject("list", list);
		return mView;
	}

	@Override
	public ModelAndView detail(int seq) {
		AddressDto dto=addressDao.getData(seq);
		ModelAndView mView=new ModelAndView();
		mView.addObject("dto", dto);
		return mView;
	}

}
