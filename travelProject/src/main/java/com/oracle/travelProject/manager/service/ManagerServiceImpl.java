package com.oracle.travelProject.manager.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.oracle.travelProject.manager.dao.ManagerDAO;
import com.oracle.travelProject.manager.dto.MemberDTO;
import com.oracle.travelProject.manager.dto.MembershipDTO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class ManagerServiceImpl implements ManagerService {
	private final ManagerDAO dao;

	//회원관리 들어갔을때 회원목록 보이는거
	@Override
	public List<MemberDTO> getMemberList() {
		List<MemberDTO>member = dao.getMemberList();
		return member;
	}
	//등급관리 들어갔을때 목록보이는거
	@Override	
	public List<MembershipDTO> getMembershipList() {
		List<MembershipDTO>membershipList = dao.getMembershipList();
		return membershipList;
	}
	@Override
	public List<MembershipDTO> getUserDetail(String mem_id) {
		List<MembershipDTO> getUserDetail = dao.getUserDetail(mem_id);
		return getUserDetail;
	}
	@Override
	public int updateUserDetail(MembershipDTO membership) {
		int result = dao.updateUserDetail(membership);
		return result;
	}
	
	
}
