package com.oracle.travelProject.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class HomeController {

	@GetMapping(value = "/")
	public String goHome() {
		return "main/home";
	}
	
	@GetMapping(value = "element")
	public String goElement() {
		return "ref/element";
	}
	
	@GetMapping(value = "hotelmain")
	public String goHotel() {
		return "hotel/hotelMain";
	}
	
	@GetMapping(value = "blog")
	public String goBlog() {
		return "ref/blog";
	}
	
	@GetMapping(value = "justTest")
	public String goTest() {
		return "hotel/justTest";
	}
	
	@GetMapping(value = "cssTest")
	public String goCssTest() {
		return "hotel/cssTest";
	}
	
	@GetMapping(value = "loginForm")
	public String goLogin() {
		return "member/loginForm";
	}
	
	/* =============== 입장권 =============== */
	@GetMapping(value = "ticketmain")
	public String goTicket() {
		return "ticket/ticketMain";
	}
	
	// 국내 입장권
	@GetMapping(value = "ticketDomestic")
	public String goTicketDomestic() {
		return "ticket/ticketDomestic";
	}
	// 해외 입장권
	@GetMapping(value = "ticketOverseas")
	public String goTicketOverseas() {
		return "ticket/ticketOverseas";
	}
	
	/* =============== 항공 =============== */
	// 국내 입장권
		@GetMapping(value = "airport")
		public String airport() {
			return "airport/searchTicket";
		}
}
