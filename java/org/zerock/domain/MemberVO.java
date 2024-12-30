package org.zerock.domain;

import lombok.Data;

@Data
public class MemberVO {
	// 필드명
	private int num;
	private String id;
	private String password;
	private String name;
	private String gender;
	private String birth_day;
	private String tel;
	private String email;
	private String regdate;
	private String address;
	private String grade;
	private String reservation;
	private String car_name;
	private int fail_count;
	private int fail_block;
}
