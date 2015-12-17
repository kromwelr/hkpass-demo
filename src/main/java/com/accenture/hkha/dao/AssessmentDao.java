/**
 *
 */
package com.accenture.hkha.dao;

import java.util.List;

import com.accenture.hkha.model.Assessment;
import com.accenture.hkha.model.Assessment2;

/**
 * @author joseph.r.a.balane
 *
 */
public interface AssessmentDao {

	Assessment2 findById(Integer id);

	List<Assessment> findAll();

	List<Assessment2> findAllAssessment();

	List<Assessment2> findByUser(String user);

	List<Assessment2> findByAssignment(String user);

	List<Assessment2> findByStatus(String status);

	List<Assessment2> findByStatusAndAssignment(String status, String assignedTo);

	void save(Assessment2 assessment);

	void update(Assessment2 assessment);

	void delete(Integer id);
	
	void resetDemoData();

}
