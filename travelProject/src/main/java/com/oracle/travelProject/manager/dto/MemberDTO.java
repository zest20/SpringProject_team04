package com.oracle.travelProject.manager.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberDTO {
	private String mem_id;
	private String mem_name;
	private String mem_password;
	private String mem_email;
	private String mem_tel;
	private Date mem_birthday;
	private Date mem_create;
	private String mem_role;
}
