package com.spring.bbs.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.ListView;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.spring.bbs.dto.BoardDto;

@Repository
public class BoardDao implements InterBoardDao{
	
	private JdbcTemplate template;
	
	@Autowired
	public BoardDao(ComboPooledDataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int BoardCount(BoardDto bbs) {
		
		int result = 0;
		String sql = " UPDATE springBoard set bbsCount = bbsCount+1 where bbsNum = ?";
		result = template.update(sql,new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement pstm) throws SQLException {
				pstm.setInt(1,bbs.getBbsNum());
			}
		});
		return result;
	}
	
	@Override
	public int BoardInsert(BoardDto bbs) {
		int result = 0;
		String sql = "INSERT INTO springBoard VALUES (NULL,?,?,?,?,?,?,?,?,?,DEFAULT,?)";
		result = template.update(sql,new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement pstm) throws SQLException {
				int num = bbs.getBbsNum();
				pstm.setInt(1,bbs.getUserNum());
				pstm.setString(2, bbs.getUserId());
				pstm.setString(3, bbs.getUserName());
				pstm.setString(4, bbs.getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;"));
				pstm.setString(5, bbs.getBbsContent());
				if(bbs.getBbsReNum() == 0) {
					pstm.setInt(6, num);
					//reNum== 0 이면 댓글이 없는경우 즉 부모글일경우
				}else {
					pstm.setInt(6, bbs.getBbsReRef());
				}
				pstm.setInt(7, bbs.getBbsReLev());
				pstm.setInt(8, bbs.getBbsReNum());
				pstm.setInt(9, 0);
				pstm.setInt(10, bbs.getUserLv());
			}
		});
		
		return result;
	}
	@Override
	public ArrayList<BoardDto> BoardList() {
		String sql ="SELECT * FROM springBoard ORDER BY bbsNum DESC";
		return (ArrayList<BoardDto>)template.query(sql, new BeanPropertyRowMapper<BoardDto>(BoardDto.class));
	}

	@Override
	public BoardDto BoardView(BoardDto bbs) {
		String sql ="SELECT * FROM springBoard WHERE bbsNum = ? and userId = ?";
		List<BoardDto> listRow = template.query(sql,new Object[] {bbs.getBbsNum(),bbs.getUserId()},new RowMapper<BoardDto>() {
			@Override
			public BoardDto mapRow(ResultSet rs, int rowNum) throws SQLException {
				bbs.setBbsNum(rs.getInt(1));
				bbs.setUserNum(rs.getInt(2));
				bbs.setUserId(rs.getString(3));
				bbs.setUserName(rs.getString(4));
				bbs.setBbsTitle(rs.getString(5));
				bbs.setBbsContent(rs.getString(6));
				bbs.setBbsReRef(rs.getInt(7));
				bbs.setBbsReLev(rs.getInt(8));
				bbs.setBbsReNum(rs.getInt(9));
				bbs.setBbsCount(rs.getInt(10));
				bbs.setBbsDate(rs.getDate(11));
				bbs.setUserLv(rs.getInt(12));
				return bbs;
			}
		});
		return listRow.get(0);
	}

	@Override
	public int BoardUpdate(BoardDto bbs) {
		int result = 0;
		String sql = "UPDATE springBoard SET bbsTitle = ?, bbsContent = ?, bbsDate = DEFAULT WHERE bbsNum = ? AND userId=?";		
		result = template.update(sql, new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement pstm) throws SQLException {
				pstm.setString(1,bbs.getBbsTitle());
				pstm.setString(2, bbs.getBbsContent());
				pstm.setInt(3,bbs.getBbsNum());
				pstm.setString(4, bbs.getUserId());
			}
		});
		
		return result;
	}
	@Override
	public int BoardDelete(BoardDto bbs) {
		int result = 0;
		String sql = "DELETE FROM springBoard WHERE userId = ? AND bbsNum = ?";
		result = template.update(sql, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement pstm) throws SQLException {
				pstm.setString(1, bbs.getUserId());
				pstm.setInt(2, bbs.getBbsNum());
			}
		});
		return result;
	}
}
