/**
 * 
 */
package com.accenture.hkha.dao;

import java.util.List;

import com.accenture.hkha.model.Assessment;

/**
 * @author joseph.r.a.balane
 *
 */
public interface AssessmentDao {

	Assessment findById(Integer id);
	
	List<Assessment> findAll();
	
	void save(Assessment assessment);
	
	void update(Assessment assessment);
	
	void delete(Integer id);
	
}
