package org.mvcproject.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.mvcproject.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("/categoryRepo")
public class CategoryRepoImpl implements CategoryRepository {

	@Autowired
	JdbcTemplate template;
	
	@Override
	public boolean addcategory(final Category category) {
		int value = template.update("insert into category(categoryid, categoryname) values (?, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, 0);
				ps.setString(2, category.getCategoryname());
			}
		});
		return value>0 ?true:false;		
	}

	@Override
	public List<Category> getAllcategories() {
		List<Category> list=template.query("Select * from category", new RowMapper<Category>(){
			
			public Category mapRow(ResultSet rs, int rownum) throws SQLException
			{
				Category category=new Category();
				category.setCategoryid(rs.getInt(1));
				category.setCategoryname(rs.getString(2));
				return category;
			}
		});
		return list.size()>0?list:null;
	}
}
