package com.myproject.myapp.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("LastP.insertBoard",vo);
		return result;
	}
	
	public int updateBoard(BoardVO vo) {
		int result = sqlSession.update("LastP.updateBoard",vo);
		return result;
	}
	
	public int deleteBoard(int seq) throws Exception {
		int result= sqlSession.delete("LastP.deleteBoard",seq);
		return result;
	}
	
	public BoardVO getBoard(int seq) throws Exception {
		return sqlSession.selectOne("LastP.getBoard",seq);
	}
	
	public List<BoardVO> getBoardList() throws Exception{
		return sqlSession.selectList("LastP.getBoardList");
	}
}

