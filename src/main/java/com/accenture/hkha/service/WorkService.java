/**
 * 
 */
package com.accenture.hkha.service;

import java.util.List;

import com.accenture.hkha.model.Work;

/**
 * @author joseph.r.a.balane
 *
 */
public interface WorkService {
	
	List<Work> findAll();
	
	Work findById(Integer id);
	
	void saveOrUpdate(Work work);
	
	void delete(Integer id);

}
