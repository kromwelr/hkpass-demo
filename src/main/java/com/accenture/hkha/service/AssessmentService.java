/**
 * 
 */
package com.accenture.hkha.service;

import java.util.List;

import com.accenture.hkha.model.Assessment;
import com.accenture.hkha.model.Assessment2;

/**
 * @author joseph.r.a.balane
 *
 */
public interface AssessmentService {
	
	List<Assessment> findAll();
	
	List<Assessment2> findByUser(String user);
	
	List<Assessment2> findByStatus(String status);
	
	List<Assessment> findByAssignment(String user);
	
	Assessment2 findById(Integer id);
	
	void saveOrUpdate(Assessment2 assessment);
	
	void delete(Integer id);

}
