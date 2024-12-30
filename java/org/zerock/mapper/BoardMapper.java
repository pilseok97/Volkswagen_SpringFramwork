package org.zerock.mapper;
/* 
	#. BoardMapper 인터페이스
  	= BoardVO 클래스 활용 -> SQL 처리가 가능함
  	= SQL 작성시 반드시 마지막에 ;(세미콜론)이 없도록 작성해야 함
  	= Sql Developer에서 테스트하고 사용
  	
  	#. SQL문 처리할 추상 메서드 만듦
*/

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	// 게시글 목록
	public List<BoardVO> getList();
	
	// 게시글 등록
	public void insert(BoardVO board);
	public void insertSelectKey(BoardVO board);
	
	// 게시글 읽기
	public BoardVO read(Long bno);
	
	// 게시글 삭제
	public int delete(Long bno);
	
	// 게시글 수정
	public int update(BoardVO board);
	
	// MyBatis 페이징
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	// 전체 글 갯수 조회
	public int getTotalCount(Criteria cri);
	
	
}
