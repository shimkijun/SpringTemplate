package com.spring.user.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.spring.user.dto.UserDto;
import com.spring.utill.PasswordEncoding;

@Repository
public class UserDao implements InterUserDao{

	private JdbcTemplate template;
	
	@Autowired
	public UserDao(ComboPooledDataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int userInsert(UserDto user) {
		int result = 0;
		String sql = "INSERT INTO springMember VALUES (NULL,?,?,?,?,?,?,DEFAULT,?)";
		result = template.update(sql,new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement pstm) throws SQLException {
				pstm.setString(1,user.getUserId());
				pstm.setString(2,user.getUserPw());
				pstm.setString(3,user.getUserName());
				pstm.setString(4,user.getUserEmail());
				pstm.setString(5,user.getUserPhone());
				pstm.setInt(6,user.getUserAge());
				pstm.setInt(7,user.getUserLv());
			}
		});
		
		return result;
	}

	@Override
	public UserDto userLogin(UserDto users) {
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		PasswordEncoding passwordEncoding = new PasswordEncoding(passwordEncoder);
		List<UserDto> user = null;
		String sql = "";
		sql = "SELECT * FROM springMember WHERE userId=?";
		user = template.query(sql, new Object[]{users.getUserId()}, new RowMapper<UserDto>() {
			@Override
			public UserDto mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserDto user = new UserDto();
				if(passwordEncoding.matches(users.getUserPw(),rs.getString("userPw"))) {
					user.setUserNum(rs.getInt(1));
					user.setUserId(rs.getString(2));
					user.setUserPw(rs.getString(3));
					user.setUserName(rs.getString(4));
					user.setUserEmail(rs.getString(5));
					user.setUserPhone(rs.getString(6));
					user.setUserAge(rs.getInt(7));
					user.setUserDate(rs.getDate(8));
					user.setUserLv(rs.getInt(9));
					return user;
				}else {
					return null;
				}
				
			}
			
		});	
		
		if(user.isEmpty()) {
			return null;
		}
		return user.get(0);
	}

	@Override
	public int userUpdate(UserDto user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userDelete(UserDto user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userCheck(UserDto user) {
		
		if(user.getUserId() == null || user.getUserId() == "") {
			return 2;
		}
		
		int result = 0;
		String sql = "";
		sql = "SELECT COUNT(*) FROM springMember WHERE userId=?";
		result = template.queryForObject(sql, new Object[] {user.getUserId()},Integer.class);
		return (result > 0 ? result : 0);
	}
	
}
