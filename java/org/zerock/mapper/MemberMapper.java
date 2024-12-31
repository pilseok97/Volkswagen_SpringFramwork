package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.MemberVO;

public interface MemberMapper {
	// 로그인 체크
	public MemberVO userIdCheck(String id);
	
	// 회원정보 하나 가져오기
	public MemberVO getMember(int num);
	
	// 비밀번호 가져오기
	public String getCheckPassword(int num);
	
	// 회원정보 수정하기
	public int updateMemberInfo(MemberVO mvo);
	
	// 비밀번호 수정하기
	public int changePassword(@Param("num") int num,@Param("newpass") String newpass);
	
	// 회원탈퇴
	public int deleteMember(int num);
	
	// 아이디 중복체크
	public String idcheckPost(String id);
	
	// 회원가입
	public int signup(MemberVO mvo);
	
	// 아이디 찾기
	public String searchId(@Param("name") String name,@Param("email") String email);
	
	// 비밀번호 찾기
	public String searchPwd(@Param("name") String name,@Param("email") String email,@Param("id") String id);
	
}
