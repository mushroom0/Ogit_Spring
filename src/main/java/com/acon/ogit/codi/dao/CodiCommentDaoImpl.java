package com.acon.ogit.codi.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acon.ogit.codi.dto.CodiCommentDto;

@Repository
public class CodiCommentDaoImpl implements CodiCommentDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(CodiCommentDto dto) {
		session.insert("codicomment.insert", dto);
	}

	@Override
	public List<CodiCommentDto> getList(int codi_seq) {
		List<CodiCommentDto> list=session.selectList("codicomment.getList");
		return list;
	}

	@Override
	public int getSequence() {
		int seq=session.selectOne("codiComment.getSequence");
		return seq;
	}
	
	
}
