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
import com.accenture.hkha.model.Assessment2;
import com.accenture.hkha.model.Form;

@Repository
public class AssessmentDaoImpl implements AssessmentDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) throws DataAccessException {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	@Override
	public Assessment2 findById(Integer id) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);

		String sql = "select * from assessment_2 where id=:id";

		Assessment2 result = namedParameterJdbcTemplate.queryForObject(sql, params, new Assessment2Mapper());

		return result;
	}

	@Override
	public List<Assessment> findAll() {

//		String sql = "select * from assessment";
//		List<Assessment> result = namedParameterJdbcTemplate.query(sql, new AssessmentMapper());

		return null;
	}

	@Override
	public List<Assessment2> findByUser(String user) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("user", user);

		String sql = "select * from assessment_2 where created_by=:user";
		List<Assessment2> result = namedParameterJdbcTemplate.query(sql, params, new Assessment2Mapper());

		return result;
	}

	@Override
	public List<Assessment2> findByAssignment(String user) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("user", user);

		String sql = "select * from assessment_2 where assigned_to=:user";
		List<Assessment2> result = namedParameterJdbcTemplate.query(sql, params, new Assessment2Mapper());

		return result;
	}

	@Override
	public List<Assessment> findByStatus(String status) {

//		Map<String, Object> params = new HashMap<String, Object>();
//		params.put("status", status);
//
//		String sql = "select * from assessment where status=:status";
//		List<Assessment> result = namedParameterJdbcTemplate.query(sql, params, new AssessmentMapper());

		return null;
	}

	@Override
	public void save(Assessment2 assessment) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Assessment2 assessment) {

		String sql = "update assessment_2 set contract=:contract, assessment_date=:assessmentDate, floor=:floor, block_zone=:blockZone, location_flat=:locationFlat,"
				+ "sub_factor_item=:subFactorItem, form_1_soundness=:form1Soundness, form_1_evenness=:form1Evenness, form_1_level=:form1Level, form_1_fall=:form1Fall,"
				+ "form_2_soundness=:form2Soundness, form_2_evenness=:form2Evenness, form_2_level=:form2Level, form_2_fall=:form2Fall,"
				+ "form_3_soundness=:form3Soundness, form_3_evenness=:form3Evenness, form_3_level=:form3Level, form_3_fall=:form3Fall,"
				+ "form_4_soundness=:form4Soundness, form_4_evenness=:form4Evenness, form_4_level=:form4Level, form_4_fall=:form4Fall,"
				+ "created_by=:createdBy, created_date=:createdDate, assigned_to=:assignedTo, status=:status, approved_by_prof=:approvedByProf, approved_by_chief=:approvedByChief,"
				+ "remarks=:remarks where id=:id";
		namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(assessment));
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub

	}

	private SqlParameterSource getSqlParameterByModel(Assessment2 assessment){

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("id", assessment.getId());

		paramSource.addValue("contract", assessment.getContract());
		paramSource.addValue("assessmentDate", assessment.getAssessmentDate());
		paramSource.addValue("floor", assessment.getFloor());
		paramSource.addValue("blockZone", assessment.getBlockZone());
		paramSource.addValue("locationFlat", assessment.getLocationFlat());
		paramSource.addValue("subFactorItem", assessment.getSubFactorItem());
		paramSource.addValue("createdBy", assessment.getCreatedBy());
		paramSource.addValue("createdDate", assessment.getCreatedDate());
		paramSource.addValue("assignedTo", assessment.getAssignedTo());
		paramSource.addValue("status", assessment.getStatus());
		paramSource.addValue("approvedByProf", assessment.getApprovedByProf());
		paramSource.addValue("approvedByChief", assessment.getApprovedByChief());
		paramSource.addValue("remarks", assessment.getRemarks());

		if(assessment.getForm1() == null){
			assessment.setForm1(new Form());
		}
		paramSource.addValue("form1Soundness", assessment.getForm1().getSoundness());
		paramSource.addValue("form1Evenness", assessment.getForm1().getEvenness());
		paramSource.addValue("form1Level", assessment.getForm1().getLevel());
		paramSource.addValue("form1Fall", assessment.getForm1().getFall());

		if(assessment.getForm2() == null){
			assessment.setForm2(new Form());
		}
		paramSource.addValue("form2Soundness", assessment.getForm2().getSoundness());
		paramSource.addValue("form2Evenness", assessment.getForm2().getEvenness());
		paramSource.addValue("form2Level", assessment.getForm2().getLevel());
		paramSource.addValue("form2Fall", assessment.getForm2().getFall());

		if(assessment.getForm3() == null){
			assessment.setForm3(new Form());
		}
		paramSource.addValue("form3Soundness", assessment.getForm3().getSoundness());
		paramSource.addValue("form3Evenness", assessment.getForm3().getEvenness());
		paramSource.addValue("form3Level", assessment.getForm3().getLevel());
		paramSource.addValue("form3Fall", assessment.getForm3().getFall());

		if(assessment.getForm4() == null){
			assessment.setForm4(new Form());
		}
		paramSource.addValue("form4Soundness", assessment.getForm4().getSoundness());
		paramSource.addValue("form4Evenness", assessment.getForm4().getEvenness());
		paramSource.addValue("form4Level", assessment.getForm4().getLevel());
		paramSource.addValue("form4Fall", assessment.getForm4().getFall());

		return paramSource;
	}

//	private static final class AssessmentMapper implements RowMapper<Assessment> {
//
//		@Override
//		public Assessment mapRow(ResultSet rs, int rowNum) throws SQLException {
//			Assessment assessment = new Assessment();
//			assessment.setId(rs.getInt("id"));
//			assessment.setProject(rs.getString("project"));
//			assessment.setSubContractor(rs.getString("sub_contractor"));
//			assessment.setContractNumber(rs.getString("contract_number"));
//			assessment.setAssessmentStartDate(rs.getString("assessment_start_date"));
//			assessment.setAssessmentEndDate(rs.getString("assessment_end_date"));
//			assessment.setStatus(rs.getString("status"));
//			assessment.setCreatedDate(rs.getString("created_date"));
//			assessment.setCreatedBy(rs.getString("created_by"));
//			assessment.setAssignedTo(rs.getString("assigned_to"));
//
//			assessment.setScore1(rs.getString("score_1"));
//			assessment.setScore2(rs.getString("score_2"));
//			assessment.setScore3(rs.getString("score_3"));
//			assessment.setScore4(rs.getString("score_4"));
//			assessment.setScore5(rs.getString("score_5"));
//			assessment.setScore6(rs.getString("score_6"));
//			assessment.setScore7(rs.getString("score_7"));
//			assessment.setScore8(rs.getString("score_8"));
//			assessment.setScore9(rs.getString("score_9"));
//			assessment.setScore10(rs.getString("score_10"));
//			assessment.setScore11(rs.getString("score_11"));
//			assessment.setScore12(rs.getString("score_12"));
//			assessment.setScore13(rs.getString("score_13"));
//			assessment.setScore14(rs.getString("score_14"));
//			return assessment;
//		}
//
//	}

	private static final class Assessment2Mapper implements RowMapper<Assessment2> {

		@Override
		public Assessment2 mapRow(ResultSet rs, int rowNum) throws SQLException {
			Assessment2 assessment2 = new Assessment2();
			assessment2.setId(rs.getInt("id"));
			assessment2.setContract(rs.getString("contract"));
			assessment2.setAssessmentDate(rs.getString("assessment_date"));
			assessment2.setFloor(rs.getString("floor"));
			assessment2.setBlockZone(rs.getString("block_zone"));
			assessment2.setLocationFlat(rs.getString("location_flat"));
			assessment2.setSubFactorItem(rs.getString("sub_factor_item"));
			assessment2.setCreatedBy(rs.getString("created_by"));
			assessment2.setCreatedDate(rs.getString("created_date"));
			assessment2.setAssignedTo(rs.getString("assigned_to"));
			assessment2.setStatus(rs.getString("status"));
			assessment2.setApprovedByProf(rs.getString("approved_by_prof"));
			assessment2.setApprovedByChief(rs.getString("approved_by_chief"));
			assessment2.setRemarks(rs.getString("remarks"));

			Form form1 = new Form();
			form1.setSoundness(rs.getString("form_1_soundness"));
			form1.setEvenness(rs.getString("form_1_evenness"));
			form1.setLevel(rs.getString("form_1_level"));
			form1.setFall(rs.getString("form_1_fall"));

			Form form2 = new Form();
			form2.setSoundness(rs.getString("form_2_soundness"));
			form2.setEvenness(rs.getString("form_2_evenness"));
			form2.setLevel(rs.getString("form_2_level"));
			form2.setFall(rs.getString("form_2_fall"));

			Form form3 = new Form();
			form3.setSoundness(rs.getString("form_3_soundness"));
			form3.setEvenness(rs.getString("form_3_evenness"));
			form3.setLevel(rs.getString("form_3_level"));
			form3.setFall(rs.getString("form_3_fall"));

			Form form4 = new Form();
			form4.setSoundness(rs.getString("form_4_soundness"));
			form4.setEvenness(rs.getString("form_4_evenness"));
			form4.setLevel(rs.getString("form_4_level"));
			form4.setFall(rs.getString("form_4_fall"));

			assessment2.setForm1(form1);
			assessment2.setForm2(form2);
			assessment2.setForm3(form3);
			assessment2.setForm4(form4);

			return assessment2;
		}


	}







}
