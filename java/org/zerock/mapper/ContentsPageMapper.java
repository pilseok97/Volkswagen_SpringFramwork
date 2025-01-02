package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface ContentsPageMapper {
	
	// 리스트 불러오기
	public List<BoardVO> getAllList();
	
	// 리스트 + 페이지
	public  List<BoardVO> getListWithPaging(Criteria cri);
	
	//
	public int getTotalCount(Criteria cri);
	
	
}
