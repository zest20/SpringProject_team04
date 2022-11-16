package com.oracle.travelProject.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	//관리자 메인페이지
	@RequestMapping(value = "ManagerMain")
	public String ManagerMain(){
		
		return "manager/managerMain";
		
	}
	//회원관리
	@RequestMapping(value = "ManageUser")
	public String ManageUser() {
		
		return "manager/manageUser";
	}
	
	//상품관리
	@RequestMapping(value = "ManageProduct")
	public String ManageProduct() {
		
		return "manager/manageProduct";
	}
	//게시판관리/리뷰관리
	@RequestMapping(value = "ManageBoard")
	public String ManageBoard() {
		
		return "manager/manageBoard";
	}
	//매출관리
	@RequestMapping(value = "ManageSales")
	public String ManageSales() {
		
		return "manager/manageSales";
	}
	//쿠폰관리
	@RequestMapping(value = "ManageCoupon")
	public String ManageCoupon() {
		
		return "manager/manageCoupon";
	}
	//예약관리
	@RequestMapping(value = "ManageReservation")
	public String ManageReservation() {
		
		return "manager/manageReservation";
	}
}
