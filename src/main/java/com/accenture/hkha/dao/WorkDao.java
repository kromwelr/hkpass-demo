/**
 * 
 */
package com.accenture.hkha.dao;

import java.util.List;

import com.accenture.hkha.model.Work;

/**
 * @author joseph.r.a.balane
 *
 */
public interface WorkDao {

	Work findById(Integer id);
	
	List<Work> findAll();
	
	void save(Work work);
	
	void update(Work work);
	
	void delete(Integer id);
	
}
