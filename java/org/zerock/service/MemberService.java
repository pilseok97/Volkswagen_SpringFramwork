package org.zerock.service;

import org.zerock.domain.MemberVO;

public interface MemberService {
	// 로그인 체크
	public MemberVO userIdCheck(String id, String password);
	
	// 회원정보 가져오기
	public MemberVO getMember(int num);
	
	// 비밀번호 가져오기
	public String getCheckPassword(int num);
	
	// 회원정보 수정하기
	public int updateMemberInfo(MemberVO mvo);
	
	// 비밀번호 수정하기
	public int changePassword(int num, String newpass);
	
	// 회원탈퇴
	public int deleteMember(int num);
	
	// 아이디 중복 체크
	public int idcheckPost(String id);
	
	// 회원가입
	public int signup(MemberVO mvo);
	
	// 아이디 찾기
	public String searchId(String name, String email); 
	
	// 비밀번호 찾기
	public String searchPwd(String name, String email, String id);
	
	
	
}
