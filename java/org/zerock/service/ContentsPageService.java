package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface ContentsPageService {
	
	// 리스트 불러오기
	public List<BoardVO> getAllList();
	
	public List<BoardVO> getListWithPaging(Criteria cri);

	public int getTotalCount(Criteria cri);
}
