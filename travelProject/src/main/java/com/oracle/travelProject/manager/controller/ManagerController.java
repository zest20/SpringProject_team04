package com.oracle.travelProject.manager.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.travelProject.manager.dto.MemberDTO;
import com.oracle.travelProject.manager.dto.MembershipDTO;
import com.oracle.travelProject.manager.service.ManagerService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ManagerController {
	
	private final ManagerService service;
	
	//관리자 메인페이지
	@RequestMapping(value = "managerMain")
	public String managerMain(){
		
		return "manager/managerMain";
		
	}
	//회원관리 ->회원관리
	@RequestMapping(value = "manageUser")
	public String manageUser(Model model) {
		List<MemberDTO> member = service.getMemberList();
		model.addAttribute("memberList", member);
		
		return "manager/manageUser";
	}
	//회원관리 -> 회원상세조회(1명)->수정/삭제가능
	@RequestMapping(value = "manageUserDetail")
	public String manageUserDetail(String mem_id,Model model) {
		List<MembershipDTO> userDetail = service.getUserDetail(mem_id);
		List<MembershipDTO> membershipList = service.getMembershipList();
		model.addAttribute("userDetail", userDetail);
		model.addAttribute("membershipList", membershipList);
		
		return "manager/manageUserDetail";
	}
	//회원상세에서 회원수정 누를시 작동
	@RequestMapping(value = "updateUserForm")
	public String updateUserForm(String mem_id, Model model) {
		List<MembershipDTO> userDetail = service.getUserDetail(mem_id);
		List<MembershipDTO> membershipList = service.getMembershipList();
		model.addAttribute("userDetail", userDetail);
		model.addAttribute("membershipList", membershipList);
		
		return "manager/updateUserForm";
	}
	
	//회원정보 수정완료 버튼누를시 작동
	@PostMapping(value = "updateUser")
	public String updateUser(MembershipDTO membership, Model model) {
		int result = service.updateUserRole(membership);
		int result1 = service.updateUserMemName(membership);
		
		return "manager/manageUserDetail?"+membership.getMem_id();
	}
	
	
	//회원관리 ->등급관리
	@RequestMapping(value = "manageMemberShip")
	public String manageMemberShip(Model model) {
		List<MembershipDTO>membershipList = service.getMembershipList();
		model.addAttribute("membershipList", membershipList);
		return "manager/manageMemberShip";
	}
	
	//상품관리 ->패키지 관리
	@RequestMapping(value = "managePackage")
	public String manageProduct() {
		
		return "manager/managePackage";
	}
	//상품관리 ->항공권 상품 관리
	@RequestMapping(value = "manageAirline")
	public String manageAirline() {
		
		return "manager/manageAirline";
	}
	//상품관리 ->숙박 상품 관리
	@RequestMapping(value = "manageHotel")
	public String manageHotel() {
		
		return "manager/manageHotel";
	}
	//상품관리 ->입장권 상품 관리
	@RequestMapping(value = "manageTicket")
	public String manageTicket() {
		
		return "manager/manageTicket";
	}
	
	//게시판관리 -> 리뷰관리
	@RequestMapping(value = "manageBoard")
	public String manageBoard() {
		
		return "manager/manageBoard";
	}
	//게시판관리 -> 공지사항관리
	@RequestMapping(value = "manageNotice")
	public String manageNotice() {
		
		return "manager/manageNotice";
	}
	//매출관리
	@RequestMapping(value = "manageSales")
	public String manageSales() {
		
		return "manager/manageSales";
	}
	//쿠폰관리
	@RequestMapping(value = "manageCoupon")
	public String manageCoupon() {
		
		return "manager/manageCoupon";
	}
	//예약관리
	@RequestMapping(value = "manageReservation")
	public String manageReservation() {
		
		return "manager/manageReservation";
	}
}
