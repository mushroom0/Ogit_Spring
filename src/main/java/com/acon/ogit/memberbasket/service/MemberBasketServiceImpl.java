package com.acon.ogit.memberbasket.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.memberbasket.dao.MemberBasketDao;
import com.acon.ogit.memberbasket.dto.MemberBasketDto;

@Service
public class MemberBasketServiceImpl implements MemberBasketService{

	@Autowired
	private MemberBasketDao basketDao;
	
	@Override
	public void insert(MemberBasketDto dto) {
		basketDao.insert(dto);
	}

	@Override
	public ModelAndView detail(String members_id) {
		ModelAndView mView=new ModelAndView();
		MemberBasketDto dto=basketDao.getData(members_id);
		mView.addObject("dto",dto);
		return mView;
	}

}
