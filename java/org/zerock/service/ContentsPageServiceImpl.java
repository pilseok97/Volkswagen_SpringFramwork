package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.mapper.ContentsPageMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class ContentsPageServiceImpl implements ContentsPageService{
	@Setter(onMethod_ = @Autowired)
	private ContentsPageMapper mapper;
	
	@Override
	public List<BoardVO> getAllList() {
		List<BoardVO> list = mapper.getAllList();
		return list;
	}
	
}
