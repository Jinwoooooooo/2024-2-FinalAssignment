package cs.dit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cs.dit.domain.BoardVO;
import cs.dit.domain.Criteria;

public interface BoardMapper {
	
	public List<BoardVO> getList();
	
	public List<BoardVO> getListPage(Criteria cri);
	
	public int insert(BoardVO board);
	
	public BoardVO read(Long bno);
	
	public int delete(Long bno);
	
	public int update(BoardVO board);
	
	public int getTotal();
}