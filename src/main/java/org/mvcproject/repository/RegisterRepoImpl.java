package org.mvcproject.repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.mvcproject.model.Register;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

@Repository("regRepo")
public class RegisterRepoImpl implements RegisterRepo {

	@Autowired
	JdbcTemplate template;
	@Override
	public boolean isAddRegister(final Register register) {
		// TODO Auto-generated method stub
		int value = template.update("insert into register values (?, ?, ?, ?, ?, ?, ?)", new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1, 0);
				ps.setString(2, register.getName());
				ps.setString(3, register.getEmail());
				ps.setString(4, register.getContact());
				ps.setString(5, register.getAddress());
				ps.setString(6, register.getPassword());
				ps.setString(7, register.getLogintype());

			}
		});

		return value>0?true:false;
	}


}
