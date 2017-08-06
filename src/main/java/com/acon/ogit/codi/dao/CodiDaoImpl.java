package com.acon.ogit.codi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acon.ogit.codi.dto.CodiDto;

@Repository
public class CodiDaoImpl implements CodiDao{

	@Autowired
	private SqlSession session;

	@Override
	public void insert(CodiDto dto) {
		session.insert("codi.insert", dto);
	}

	@Override
	public List<CodiDto> getList() {
		List<CodiDto> list=session.selectList("codi.getList");
		return list;
	}

	@Override
	public CodiDto getData(int seq) {
		CodiDto dto=session.selectOne("codi.getData", seq);
		return dto;
	}

	@Override
	public String getName(String members_id) {
		String name=session.selectOne("codi.getName", members_id);
		return name;
	}
	
	
	
}
