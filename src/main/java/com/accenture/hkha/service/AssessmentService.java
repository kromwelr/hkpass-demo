/**
 * 
 */
package com.accenture.hkha.service;

import java.util.List;

import com.accenture.hkha.model.Assessment;

/**
 * @author joseph.r.a.balane
 *
 */
public interface AssessmentService {
	
	List<Assessment> findAll();
	
	List<Assessment> findByUser(String user);
	
	List<Assessment> findByStatus(String status);
	
	List<Assessment> findByAssignment(String user);
	
	Assessment findById(Integer id);
	
	void saveOrUpdate(Assessment assessment);
	
	void delete(Integer id);

}
