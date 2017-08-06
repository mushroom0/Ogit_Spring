package com.acon.ogit.codi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.codi.dao.CodiCommentDao;
import com.acon.ogit.codi.dao.CodiDao;
import com.acon.ogit.codi.dto.CodiCommentDto;
import com.acon.ogit.codi.dto.CodiDto;

@Service
public class CodiServiceImpl implements CodiService{

	@Autowired
	private CodiDao codiDao;
	
	@Autowired
	private CodiCommentDao commentDao;
	
	
	@Override
	public void insert(CodiDto dto) {
		codiDao.insert(dto);
	}

	@Override
	public ModelAndView list() {
		ModelAndView mView=new ModelAndView();
		List<CodiDto> list=codiDao.getList();
		mView.addObject("list", list);
		return mView;
	}

	@Override
	public ModelAndView detail(int seq) {
		CodiDto dto=codiDao.getData(seq);
		List<CodiCommentDto> commentList=commentDao.getList(seq);
		ModelAndView mView=new ModelAndView();
		mView.addObject("dto", dto);
		mView.addObject("commentList", commentList);
		
		return mView;
	}

	@Override
	public void commentInsert(CodiCommentDto dto) {
		commentDao.insert(dto);
	}

	@Override
	public String getName(String members_id) {
		
		return codiDao.getName(members_id);
	}

	
}
