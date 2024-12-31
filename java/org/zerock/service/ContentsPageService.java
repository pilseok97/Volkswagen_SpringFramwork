package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface ContentsPageService {
	
	// 리스트 불러오기
	public List<BoardVO> getAllList();
}
