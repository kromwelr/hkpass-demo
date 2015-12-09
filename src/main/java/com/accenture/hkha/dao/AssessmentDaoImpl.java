package com.accenture.hkha.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.accenture.hkha.model.Assessment;

@Repository
public class AssessmentDaoImpl implements AssessmentDao {
	
	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) throws DataAccessException {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	@Override
	public Assessment findById(Integer id) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		
		String sql = "select * from assessment where id=:id";
		
		Assessment result = namedParameterJdbcTemplate.queryForObject(sql, params, new AssessmentMapper());
		
		return result;
	}

	@Override
	public List<Assessment> findAll() {
		
		String sql = "select * from assessment";
		List<Assessment> result = namedParameterJdbcTemplate.query(sql, new AssessmentMapper());
		
		return result;
	}

	@Override
	public List<Assessment> findByUser(String user) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("user", user);
		
		String sql = "select * from assessment where created_by=:user";
		List<Assessment> result = namedParameterJdbcTemplate.query(sql, params, new AssessmentMapper());
		
		return result;
	}
	
	@Override
	public List<Assessment> findByAssignment(String user) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("user", user);
		
		String sql = "select * from assessment where assigned_to=:user";
		List<Assessment> result = namedParameterJdbcTemplate.query(sql, params, new AssessmentMapper());
		
		return result;
	}
	
	@Override
	public List<Assessment> findByStatus(String status) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("status", status);
		
		String sql = "select * from assessment where status=:status";
		List<Assessment> result = namedParameterJdbcTemplate.query(sql, params, new AssessmentMapper());
		
		return result;
	}
	
	@Override
	public void save(Assessment assessment) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Assessment assessment) {
		
		String sql = "update assessment set project=:project, sub_contractor=:subContractor, contract_number=:contractNumber, assessment_start_date=:assessmentStartDate,"
				+ "assessment_end_date=:assessmentEndDate, status=:status, created_date=:createdDate, created_by=:createdBy, assigned_to=:assignedTo, score_1=:score1, score_2=:score2,"
				+ "score_3=:score3, score_4=:score4, score_5=:score5, score_6=:score6, score_7=:score7, score_8=:score8, score_9=:score9, score_10=:score10,"
				+ "score_11=:score11, score_12=:score12, score_13=:score13, score_14=:score14 where id=:id";
		
		namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(assessment));
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub

	}
	
	private SqlParameterSource getSqlParameterByModel(Assessment assessment){
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("id", assessment.getId());
		paramSource.addValue("project", assessment.getProject());
		paramSource.addValue("subContractor", assessment.getSubContractor());
		paramSource.addValue("contractNumber", assessment.getContractNumber());
		paramSource.addValue("assessmentStartDate", assessment.getAssessmentStartDate());
		paramSource.addValue("assessmentEndDate", assessment.getAssessmentEndDate());
		paramSource.addValue("status", assessment.getStatus());
		paramSource.addValue("createdDate", assessment.getCreatedDate());
		paramSource.addValue("createdBy", assessment.getCreatedBy());
		paramSource.addValue("assignedTo", assessment.getAssignedTo());
		
		paramSource.addValue("score1", assessment.getScore1());
		paramSource.addValue("score2", assessment.getScore2());
		paramSource.addValue("score3", assessment.getScore3());
		paramSource.addValue("score4", assessment.getScore4());
		paramSource.addValue("score5", assessment.getScore5());
		paramSource.addValue("score6", assessment.getScore6());
		paramSource.addValue("score7", assessment.getScore7());
		paramSource.addValue("score8", assessment.getScore8());
		paramSource.addValue("score9", assessment.getScore9());
		paramSource.addValue("score10", assessment.getScore10());
		paramSource.addValue("score11", assessment.getScore11());
		paramSource.addValue("score12", assessment.getScore12());
		paramSource.addValue("score13", assessment.getScore13());
		paramSource.addValue("score14", assessment.getScore14());
		
		return paramSource;
	}
	
	private static final class AssessmentMapper implements RowMapper<Assessment> {

		@Override
		public Assessment mapRow(ResultSet rs, int rowNum) throws SQLException {
			Assessment assessment = new Assessment();
			assessment.setId(rs.getInt("id"));
			assessment.setProject(rs.getString("project"));
			assessment.setSubContractor(rs.getString("sub_contractor"));
			assessment.setContractNumber(rs.getString("contract_number"));
			assessment.setAssessmentStartDate(rs.getString("assessment_start_date"));
			assessment.setAssessmentEndDate(rs.getString("assessment_end_date"));
			assessment.setStatus(rs.getString("status"));
			assessment.setCreatedDate(rs.getString("created_date"));
			assessment.setCreatedBy(rs.getString("created_by"));
			assessment.setAssignedTo(rs.getString("assigned_to"));
			
			assessment.setScore1(rs.getString("score_1"));
			assessment.setScore2(rs.getString("score_2"));
			assessment.setScore3(rs.getString("score_3"));
			assessment.setScore4(rs.getString("score_4"));
			assessment.setScore5(rs.getString("score_5"));
			assessment.setScore6(rs.getString("score_6"));
			assessment.setScore7(rs.getString("score_7"));
			assessment.setScore8(rs.getString("score_8"));
			assessment.setScore9(rs.getString("score_9"));
			assessment.setScore10(rs.getString("score_10"));
			assessment.setScore11(rs.getString("score_11"));
			assessment.setScore12(rs.getString("score_12"));
			assessment.setScore13(rs.getString("score_13"));
			assessment.setScore14(rs.getString("score_14"));
			return assessment;
		}
		
	}







}
