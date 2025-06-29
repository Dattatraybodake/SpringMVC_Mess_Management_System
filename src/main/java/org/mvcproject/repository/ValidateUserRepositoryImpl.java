package org.mvcproject.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.mvcproject.model.LoginModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ValidateUserRepositoryImpl implements ValidateUserRepository {

	@Autowired
	JdbcTemplate template;

	@Override
	public boolean isValidate(final LoginModel model) {

		String sql = "SELECT * FROM register WHERE email = ? AND password = ? AND logintype = ?";
		
		List<LoginModel> list = template.query(sql, new Object[] { model.getEmail(), model.getPassword(),model.getLogintype() },new RowMapper<LoginModel>() {
					@Override
					public LoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						LoginModel loginModel = new LoginModel();
						loginModel.setEmail(rs.getString("email"));
						loginModel.setPassword(rs.getString("password"));
						loginModel.setLogintype(rs.getString("logintype"));
						return loginModel;
					}
				});
		return !list.isEmpty();
	}
}
