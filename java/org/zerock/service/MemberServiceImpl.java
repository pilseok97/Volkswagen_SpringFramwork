package org.zerock.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod_ = @Autowired)
    private MemberMapper mapper;

	@Override
	public MemberVO userIdCheck(String id, String password) {
		MemberVO mvo = mapper.userIdCheck(id);
		if(mvo !=null && mvo.getPassword().equals(password)) {
			log.info("비밀번호 맞음");
			return mvo;
		}else {
			log.info("비밀번호 틀림");
			return null;
		}
	}
	
	@Override
	public MemberVO getMember(int num) {
		MemberVO mvo = mapper.getMember(num);
		return mvo;
	}

	@Override
	public String getCheckPassword(int num) {
		String password = mapper.getCheckPassword(num);
		return password;
	}

	@Override
	public int updateMemberInfo(MemberVO mvo) {
		int count = mapper.updateMemberInfo(mvo);
		return count;
	}

	@Override
	public int changePassword(int num, String newpass) {
		int count = mapper.changePassword(num, newpass);
		return count;
	}

	@Override
	public int deleteMember(int num) {
		int count = mapper.deleteMember(num);
		return count;
	}

	@Override
	public int idcheckPost(String id) {
		String idcheck = mapper.idcheckPost(id);
		int count = 0;
		if(idcheck==null || idcheck=="") {
			count = -1;
		}else {
			count = 1;
		}
		return count;
	}

	@Override
	public int signup(MemberVO mvo) {
		int count = mapper.signup(mvo);
		return count;
	}

	@Override
	public String searchId(String name, String email) {
		String searchId = mapper.searchId(name, email);
		return searchId;
	}

	@Override
	public String searchPwd(String name, String email, String id) {
		String searchPwd = mapper.searchPwd(name, email, id);
		return searchPwd;
	}
	
	
	
	
	
	

}
