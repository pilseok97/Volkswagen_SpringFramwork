package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Service
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_= @Autowired)
	private BoardMapper mapper;

	/* 등록작업 구현 */
	@Override
	public void register(BoardVO board) {
		log.info("register..." + board);
		mapper.insertSelectKey(board);
	}

	/* 목록(리스트) 구현 */
//	@Override
//	public List<BoardVO> getList() {
//		log.info("getList().....");
//		return mapper.getList();
//	}

	/* 조회 구현*/
	@Override
	public BoardVO get(Long bno) {
		log.info("get.....하나의 데이터" + bno);
		return mapper.read(bno);
	}

	/* 수정 구현 */
	@Override
	public boolean modify(BoardVO board) {
		log.info("modify....." + board);
		return mapper.update(board) == 1;
	}

	/* 삭제 구현 */
	@Override
	public boolean remove(Long bno) {
		log.info("remove....." + bno);
		return mapper.delete(bno) == 1;
 	}

	/* 목록(리스트) 구현 + 페이징 */
	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("getList with Criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}
	
	/* 전체 데이터 갯수 조회 */
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
	
	
}
