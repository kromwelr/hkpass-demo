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
	public List<Assessment2> findAllAssessment() {

		String sql = "select * from assessment_2";
		List<Assessment2> result = namedParameterJdbcTemplate.query(sql, new Assessment2Mapper());

		return result;
	}

	public List<Assessment2> findByStatusAndAssignment(String status, String assignedTo){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("status", status);
		params.put("assignedTo", assignedTo);

		String sql = "select * from assessment_2 where status=:status and assigned_to=:assignedTo";
		List<Assessment2> result = namedParameterJdbcTemplate.query(sql, params, new Assessment2Mapper());

		return result;
	}
	@Override
	public List<Assessment2> findByStatus(String status) {


		Map<String, Object> params = new HashMap<String, Object>();
		params.put("status", status);

		String sql = "select * from assessment_2 where status=:status";
		List<Assessment2> result = namedParameterJdbcTemplate.query(sql, params, new Assessment2Mapper());

		return result;
	}

	@Override
	public void save(Assessment2 assessment) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Assessment2 assessment) {

		String sql = "update assessment_2 set contract=:contract, assessment_date=:assessmentDate, "
				+ "floor=:floor, block_zone=:blockZone, location_flat=:locationFlat,sub_factor_item=:subFactorItem, "
				+ "floor2=:floor2, block_zone2=:blockZone2, location_flat2=:locationFlat2,sub_factor_item2=:subFactorItem2, "
				+ "floor3=:floor3, block_zone3=:blockZone3, location_flat3=:locationFlat3,sub_factor_item3=:subFactorItem3, "
				+ "floor4=:floor4, block_zone4=:blockZone4, location_flat4=:locationFlat4,sub_factor_item4=:subFactorItem4, "
				+ "floor5=:floor5, block_zone5=:blockZone5, location_flat5=:locationFlat5,sub_factor_item5=:subFactorItem5, "
				+ "form_1_soundness=:form1Soundness, form_1_evenness=:form1Evenness, form_1_level=:form1Level, form_1_fall=:form1Fall,"
				+ "form_2_soundness=:form2Soundness, form_2_evenness=:form2Evenness, form_2_level=:form2Level, form_2_fall=:form2Fall,"
				+ "form_3_soundness=:form3Soundness, form_3_evenness=:form3Evenness, form_3_level=:form3Level, form_3_fall=:form3Fall,"
				+ "form_4_soundness=:form4Soundness, form_4_evenness=:form4Evenness, form_4_level=:form4Level, form_4_fall=:form4Fall,"
				+ "form_t21_evenness=:form_t21_evenness, form_t21_level=:form_t21_level, form_t21_fall=:form_t21_fall,"
				+ "form_t22_evenness=:form_t22_evenness, form_t22_level=:form_t22_level, form_t22_fall=:form_t22_fall,"
				+ "form_t23_evenness=:form_t23_evenness, form_t23_level=:form_t23_level, form_t23_fall=:form_t23_fall,"
				+ "form_t24_evenness=:form_t24_evenness, form_t24_level=:form_t24_level, form_t24_fall=:form_t24_fall,"
				+ "form_t31_soundness=:form_t31_soundness,"
				+ "form_t32_soundness=:form_t32_soundness,"
				+ "form_t33_soundness=:form_t33_soundness,"
				+ "form_t34_soundness=:form_t34_soundness,"
				+ "form_t41_lintol=:form_t41_lintol, form_t41_evenness=:form_t41_evenness, form_t41_jointwidth=:form_t41_jointwidth, form_t41_finish=:form_t41_finish,"
				+ "form_t42_lintol=:form_t42_lintol, form_t42_evenness=:form_t42_evenness, form_t42_jointwidth=:form_t42_jointwidth, form_t42_finish=:form_t42_finish,"
				+ "form_t43_lintol=:form_t43_lintol, form_t43_evenness=:form_t43_evenness, form_t43_jointwidth=:form_t43_jointwidth, form_t43_finish=:form_t43_finish,"
				+ "form_t44_lintol=:form_t44_lintol, form_t44_evenness=:form_t44_evenness, form_t44_jointwidth=:form_t44_jointwidth, form_t44_finish=:form_t44_finish,"
				+ "form_t51_evenness=:form_t51_evenness, form_t51_plumb=:form_t51_plumb, form_t51_soundness=:form_t51_soundness, form_t51_finish=:form_t51_finish,"
				+ "form_t52_evenness=:form_t52_evenness, form_t52_plumb=:form_t52_plumb, form_t52_soundness=:form_t52_soundness, form_t52_finish=:form_t52_finish,"
				+ "form_t53_evenness=:form_t53_evenness, form_t53_plumb=:form_t53_plumb, form_t53_soundness=:form_t53_soundness, form_t53_finish=:form_t53_finish,"
				+ "form_t54_evenness=:form_t54_evenness, form_t54_plumb=:form_t54_plumb, form_t54_soundness=:form_t54_soundness, form_t54_finish=:form_t54_finish,"
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

		paramSource.addValue("floor2", assessment.getFloor2());
		paramSource.addValue("blockZone2", assessment.getBlockZone2());
		paramSource.addValue("locationFlat2", assessment.getLocationFlat2());
		paramSource.addValue("subFactorItem2", assessment.getSubFactorItem2());

		paramSource.addValue("floor3", assessment.getFloor3());
		paramSource.addValue("blockZone3", assessment.getBlockZone3());
		paramSource.addValue("locationFlat3", assessment.getLocationFlat3());
		paramSource.addValue("subFactorItem3", assessment.getSubFactorItem3());

		paramSource.addValue("floor4", assessment.getFloor4());
		paramSource.addValue("blockZone4", assessment.getBlockZone4());
		paramSource.addValue("locationFlat4", assessment.getLocationFlat4());
		paramSource.addValue("subFactorItem4", assessment.getSubFactorItem4());

		paramSource.addValue("floor5", assessment.getFloor5());
		paramSource.addValue("blockZone5", assessment.getBlockZone5());
		paramSource.addValue("locationFlat5", assessment.getLocationFlat5());
		paramSource.addValue("subFactorItem5", assessment.getSubFactorItem5());

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

		Form form = assessment.getForm21()==null?new Form():assessment.getForm21();
		paramSource.addValue("form_t21_evenness", form.getEvenness());
		paramSource.addValue("form_t21_level", form.getLevel());
		paramSource.addValue("form_t21_fall", form.getFall());

		form = assessment.getForm22()==null?new Form():assessment.getForm22();
		paramSource.addValue("form_t22_evenness", form.getEvenness());
		paramSource.addValue("form_t22_level", form.getLevel());
		paramSource.addValue("form_t22_fall", form.getFall());

		form = assessment.getForm23()==null?new Form():assessment.getForm23();
		paramSource.addValue("form_t23_evenness", form.getEvenness());
		paramSource.addValue("form_t23_level", form.getLevel());
		paramSource.addValue("form_t23_fall", form.getFall());

		form = assessment.getForm24()==null?new Form():assessment.getForm24();
		paramSource.addValue("form_t24_evenness", form.getEvenness());
		paramSource.addValue("form_t24_level", form.getLevel());
		paramSource.addValue("form_t24_fall", form.getFall());

		form = assessment.getForm31()==null?new Form():assessment.getForm31();
		paramSource.addValue("form_t31_soundness", form.getSoundness());
		form = assessment.getForm32()==null?new Form():assessment.getForm32();
		paramSource.addValue("form_t32_soundness", form.getSoundness());
		form = assessment.getForm33()==null?new Form():assessment.getForm33();
		paramSource.addValue("form_t33_soundness", form.getSoundness());
		form = assessment.getForm34()==null?new Form():assessment.getForm34();
		paramSource.addValue("form_t34_soundness", form.getSoundness());

		form = assessment.getForm41()==null?new Form():assessment.getForm41();;
		paramSource.addValue("form_t41_lintol", form.getLintol());
		paramSource.addValue("form_t41_evenness", form.getEvenness());
		paramSource.addValue("form_t41_jointwidth", form.getJointwidth());
		paramSource.addValue("form_t41_finish", form.getFinish());

		form = assessment.getForm42()==null?new Form():assessment.getForm42();
		paramSource.addValue("form_t42_lintol", form.getLintol());
		paramSource.addValue("form_t42_evenness", form.getEvenness());
		paramSource.addValue("form_t42_jointwidth", form.getJointwidth());
		paramSource.addValue("form_t42_finish", form.getFinish());

		form = assessment.getForm43()==null?new Form():assessment.getForm43();
		paramSource.addValue("form_t43_lintol", form.getLintol());
		paramSource.addValue("form_t43_evenness", form.getEvenness());
		paramSource.addValue("form_t43_jointwidth", form.getJointwidth());
		paramSource.addValue("form_t43_finish", form.getFinish());

		form = assessment.getForm44()==null?new Form():assessment.getForm44();
		paramSource.addValue("form_t44_lintol", form.getLintol());
		paramSource.addValue("form_t44_evenness", form.getEvenness());
		paramSource.addValue("form_t44_jointwidth", form.getJointwidth());
		paramSource.addValue("form_t44_finish", form.getFinish());

		form = assessment.getForm51()==null?new Form():assessment.getForm51();
		paramSource.addValue("form_t51_evenness", form.getEvenness());
		paramSource.addValue("form_t51_plumb", form.getPlumb());
		paramSource.addValue("form_t51_soundness", form.getSoundness());
		paramSource.addValue("form_t51_finish", form.getFinish());

		form = assessment.getForm52()==null?new Form():assessment.getForm52();
		paramSource.addValue("form_t52_evenness", form.getEvenness());
		paramSource.addValue("form_t52_plumb", form.getPlumb());
		paramSource.addValue("form_t52_soundness", form.getSoundness());
		paramSource.addValue("form_t52_finish", form.getFinish());

		form = assessment.getForm53()==null?new Form():assessment.getForm53();
		paramSource.addValue("form_t53_evenness", form.getEvenness());
		paramSource.addValue("form_t53_plumb", form.getPlumb());
		paramSource.addValue("form_t53_soundness", form.getSoundness());
		paramSource.addValue("form_t53_finish", form.getFinish());

		form = assessment.getForm54()==null?new Form():assessment.getForm54();
		paramSource.addValue("form_t54_evenness", form.getEvenness());
		paramSource.addValue("form_t54_plumb", form.getPlumb());
		paramSource.addValue("form_t54_soundness", form.getSoundness());
		paramSource.addValue("form_t54_finish", form.getFinish());


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

			assessment2.setFloor2(rs.getString("floor2"));
			assessment2.setBlockZone2(rs.getString("block_zone2"));
			assessment2.setLocationFlat2(rs.getString("location_flat2"));
			assessment2.setSubFactorItem2(rs.getString("sub_factor_item2"));

			assessment2.setFloor3(rs.getString("floor3"));
			assessment2.setBlockZone3(rs.getString("block_zone3"));
			assessment2.setLocationFlat3(rs.getString("location_flat3"));
			assessment2.setSubFactorItem3(rs.getString("sub_factor_item3"));

			assessment2.setFloor4(rs.getString("floor4"));
			assessment2.setBlockZone4(rs.getString("block_zone4"));
			assessment2.setLocationFlat4(rs.getString("location_flat4"));
			assessment2.setSubFactorItem4(rs.getString("sub_factor_item4"));

			assessment2.setFloor5(rs.getString("floor5"));
			assessment2.setBlockZone5(rs.getString("block_zone5"));
			assessment2.setLocationFlat5(rs.getString("location_flat5"));
			assessment2.setSubFactorItem5(rs.getString("sub_factor_item5"));

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

			Form formt2 = new Form();
			formt2.setEvenness(rs.getString("form_t21_evenness"));
			formt2.setLevel(rs.getString("form_t21_level"));
			formt2.setFall(rs.getString("form_t21_fall"));
			assessment2.setForm21(formt2);

			formt2 = new Form();
			formt2.setEvenness(rs.getString("form_t22_evenness"));
			formt2.setLevel(rs.getString("form_t22_level"));
			formt2.setFall(rs.getString("form_t22_fall"));
			assessment2.setForm22(formt2);

			formt2 = new Form();
			formt2.setEvenness(rs.getString("form_t23_evenness"));
			formt2.setLevel(rs.getString("form_t23_level"));
			formt2.setFall(rs.getString("form_t23_fall"));
			assessment2.setForm23(formt2);

			formt2 = new Form();
			formt2.setEvenness(rs.getString("form_t24_evenness"));
			formt2.setLevel(rs.getString("form_t24_level"));
			formt2.setFall(rs.getString("form_t24_fall"));
			assessment2.setForm24(formt2);

			Form formt3 = new Form();
			formt3.setSoundness(rs.getString("form_t31_soundness"));
			assessment2.setForm31(formt3);

			formt3 = new Form();
			formt3.setSoundness(rs.getString("form_t32_soundness"));
			assessment2.setForm32(formt3);

			formt3 = new Form();
			formt3.setSoundness(rs.getString("form_t33_soundness"));
			assessment2.setForm33(formt3);

			formt3 = new Form();
			formt3.setSoundness(rs.getString("form_t34_soundness"));
			assessment2.setForm34(formt3);

			Form formt4 = new Form();
			formt4.setLintol(rs.getString("form_t41_lintol"));
			formt4.setEvenness(rs.getString("form_t41_evenness"));
			formt4.setJointwidth(rs.getString("form_t41_jointwidth"));
			formt4.setFinish(rs.getString("form_t41_finish"));
			assessment2.setForm41(formt4);

			formt4 = new Form();
			formt4.setLintol(rs.getString("form_t42_lintol"));
			formt4.setEvenness(rs.getString("form_t42_evenness"));
			formt4.setJointwidth(rs.getString("form_t42_jointwidth"));
			formt4.setFinish(rs.getString("form_t42_finish"));
			assessment2.setForm42(formt4);

			formt4 = new Form();
			formt4.setLintol(rs.getString("form_t43_lintol"));
			formt4.setEvenness(rs.getString("form_t43_evenness"));
			formt4.setJointwidth(rs.getString("form_t43_jointwidth"));
			formt4.setFinish(rs.getString("form_t43_finish"));
			assessment2.setForm43(formt4);

			formt4 = new Form();
			formt4.setLintol(rs.getString("form_t44_lintol"));
			formt4.setEvenness(rs.getString("form_t44_evenness"));
			formt4.setJointwidth(rs.getString("form_t44_jointwidth"));
			formt4.setFinish(rs.getString("form_t44_finish"));
			assessment2.setForm44(formt4);

			Form formt5 = new Form();
			formt5.setEvenness(rs.getString("form_t51_evenness"));
			formt5.setPlumb(rs.getString("form_t51_plumb"));
			formt5.setSoundness(rs.getString("form_t51_soundness"));
			formt5.setFinish(rs.getString("form_t51_finish"));
			assessment2.setForm52(formt5);

			formt5 = new Form();
			formt5.setEvenness(rs.getString("form_t52_evenness"));
			formt5.setPlumb(rs.getString("form_t52_plumb"));
			formt5.setSoundness(rs.getString("form_t52_soundness"));
			formt5.setFinish(rs.getString("form_t52_finish"));
			assessment2.setForm52(formt5);

			formt5 = new Form();
			formt5.setEvenness(rs.getString("form_t53_evenness"));
			formt5.setPlumb(rs.getString("form_t53_plumb"));
			formt5.setSoundness(rs.getString("form_t53_soundness"));
			formt5.setFinish(rs.getString("form_t53_finish"));
			assessment2.setForm53(formt5);

			formt5 = new Form();
			formt5.setEvenness(rs.getString("form_t54_evenness"));
			formt5.setPlumb(rs.getString("form_t54_plumb"));
			formt5.setSoundness(rs.getString("form_t54_soundness"));
			formt5.setFinish(rs.getString("form_t54_finish"));
			assessment2.setForm54(formt5);

			assessment2.setForm1(form1);
			assessment2.setForm2(form2);
			assessment2.setForm3(form3);
			assessment2.setForm4(form4);


			return assessment2;
		}


	}







}
