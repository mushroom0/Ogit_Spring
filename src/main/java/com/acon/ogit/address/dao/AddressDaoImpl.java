package com.acon.ogit.address.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.acon.ogit.address.dto.AddressDto;

@Repository
public class AddressDaoImpl implements AddressDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(AddressDto dto) {
		session.insert("address.insert",dto);
	}

	@Override
	public List<AddressDto> getList(String members_id) {
		List<AddressDto> list=session.selectList("address.getList",members_id);
		return list;
	}

	@Override
	public AddressDto getData(int seq) {
		AddressDto dto=session.selectOne("address.getData", seq);
		return dto;
	}
	
}
