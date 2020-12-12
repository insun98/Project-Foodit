package com.myproject.myapp.board;
import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int deleteBoard(int seq) throws Exception;
	public int updateBoard(BoardVO vo);
	public BoardVO getBoard(int seq) throws Exception;
	public List<BoardVO> getBoardList() throws Exception;
}
