package cs.dit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cs.dit.domain.BoardVO;
import cs.dit.domain.Criteria;
import cs.dit.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Service  
@Log4j
@RequiredArgsConstructor  //final로 객체주입(DI)
@ToString
public class BoardServiceImpl implements BoardService{
  
	private final BoardMapper mapper;

	@Override
	public List<BoardVO> getList() {
		
		return mapper.getList();
	}
	
	
	@Override
	public List<BoardVO> getList(Criteria cri) {
		
		log.info("get List with Criteria : " + cri);
		
		return mapper.getListPage(cri);
	}

	@Override
	public BoardVO get(Long bno) {
		return mapper.read(bno);
	}

	@Override
	public int register(BoardVO board) {
		
		return mapper.insert(board);	
	}

	@Override
	public int modify(BoardVO board) {
		
		return mapper.update(board);
	}

	@Override
	public int remove(Long bno) {
		
		return mapper.delete(bno);
	}

	@Override
	public int getTotal() {
		
		return mapper.getTotal();
	}

}