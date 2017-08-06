package com.acon.ogit.memberbasket.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acon.ogit.memberbasket.dto.MemberBasketDto;

@Repository
public class MemberBasketDaoImpl implements MemberBasketDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(MemberBasketDto dto) {
		session.insert("membersbasket.insert", dto);
	}

	@Override
	public MemberBasketDto getData(String members_id) {
		MemberBasketDto dto=session.selectOne("membersbasket.getData", members_id);
		return dto;
	}

}
