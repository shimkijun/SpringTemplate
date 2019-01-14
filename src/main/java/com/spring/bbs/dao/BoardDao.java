package com.spring.bbs.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
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
				pstm.setString(4, bbs.getBbsTitle());
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

}
