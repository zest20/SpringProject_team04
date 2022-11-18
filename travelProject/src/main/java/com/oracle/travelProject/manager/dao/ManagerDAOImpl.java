package com.oracle.travelProject.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.oracle.travelProject.manager.dto.MemberDTO;
import com.oracle.travelProject.manager.dto.MembershipDTO;

import lombok.RequiredArgsConstructor;
@Repository
@RequiredArgsConstructor
public class ManagerDAOImpl implements ManagerDAO {
	private final SqlSession session;
	
	@Override
	public List<MemberDTO> getMemberList() {
		List<MemberDTO>member = session.selectList("MemberList");
		return member;
	}

	@Override
	public List<MembershipDTO> getMembershipList() {
		List<MembershipDTO>membershipList = session.selectList("MembershipList");
		return membershipList;
	}

	@Override
	public List<MembershipDTO> getUserDetail(String mem_id) {
		List<MembershipDTO> getUserDetail = session.selectList("GetUserDetail",mem_id);
		return getUserDetail;
	}

	@Override
	public int updateUserDetail(MembershipDTO membership) {
		int result = session.update("UpdateUserDetail",membership);
		return result;
	}

}
