package com.accenture.hkha.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accenture.hkha.dao.WorkDao;
import com.accenture.hkha.model.Work;

@Service("workService")
public class WorkServiceImpl implements WorkService {

	WorkDao workDao;
	
	@Autowired
	public void setWorkDao(WorkDao workDao) {
		this.workDao = workDao;
	}

	@Override
	public List<Work> findAll() {
		return workDao.findAll();
	}

	@Override
	public Work findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveOrUpdate(Work work) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub

	}

}
