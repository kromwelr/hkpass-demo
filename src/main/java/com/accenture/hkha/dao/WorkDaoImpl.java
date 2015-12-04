package com.accenture.hkha.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.accenture.hkha.model.Work;

@Repository
public class WorkDaoImpl implements WorkDao {
	
	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) throws DataAccessException {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	@Override
	public Work findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Work> findAll() {
		
		String sql = "SELECT * FROM WORK";
		List<Work> result = namedParameterJdbcTemplate.query(sql, new WorkMapper());
		
		return result;
	}

	@Override
	public void save(Work work) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Work work) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub

	}
	
	private static final class WorkMapper implements RowMapper<Work> {

		@Override
		public Work mapRow(ResultSet rs, int rowNum) throws SQLException {
			Work work = new Work();
			work.setId(rs.getInt("id"));
			work.setStatus(rs.getString("status"));
			work.setCreatedDate(rs.getString("created_date"));
			work.setCreatedBy(rs.getString("created_by"));
			return work;
		}
		
	}

}
