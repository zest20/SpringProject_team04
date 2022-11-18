package com.oracle.travelProject.manager.dao;

import java.util.List;

import com.oracle.travelProject.manager.dto.MemberDTO;
import com.oracle.travelProject.manager.dto.MembershipDTO;

public interface ManagerDAO {

	List<MemberDTO> getMemberList();

	List<MembershipDTO> getMembershipList();

	List<MembershipDTO> getUserDetail(String mem_id);

	int updateUserDetail(MembershipDTO membership);

}
