package cs.dit.service;

import java.util.List;

import cs.dit.domain.BoardVO;
import cs.dit.domain.Criteria;

public interface BoardService {

	public List<BoardVO> getList();
	
	public List<BoardVO> getList(Criteria cri);
	
	public BoardVO get(Long bno);
	
	public int register(BoardVO board);
	
	public int modify(BoardVO board);
	
	public int remove(Long bno);
	
	public int getTotal();     
	
}