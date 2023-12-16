package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo){
        int result = sqlSession.insert("Board.insetBoard",vo);
        return result;
    }

    public int deleteBoard(int seq){
        return sqlSession.delete("Board.deleteBoard", seq);
    }

    public int updateBoard(BoardVO vo){
        return sqlSession.update("Board.updateBoard", vo);
    }


    static class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setTitle(rs.getString("title"));
            vo.setContent(rs.getString("content"));
            vo.setWriter(rs.getString("writer"));
            vo.setCategory(rs.getString("category"));
            vo.setRegDate(rs.getDate("regdate"));
            vo.setUpdateDate(rs.getDate("updateDate"));
            return vo;
        }
    }

    public BoardVO getBoard(int seq){
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }


}
