package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardService {
	// 등록 작업
	public void register(BoardVO board);
	
	// 전체 목록 가져옴
//	public List<BoardVO> getList();
	
	// 읽기
	public BoardVO get(Long bno);
	
	// 수정유무
	public boolean modify(BoardVO board);
	
	// 삭제 유무
	public boolean remove(Long bno);
	
	// 전체 목록 가져옴 + 페이징
	public List<BoardVO> getList(Criteria cri);
	
	// 전체 데이터 갯수 구하는 메서드
	public int getTotal(Criteria cri);
}
