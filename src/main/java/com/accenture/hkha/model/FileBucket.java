/**
 * 
 */
package com.accenture.hkha.model;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author joseph.r.a.balane
 *
 */
public class FileBucket {
	
	private Integer assessmentId;
	
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public Integer getAssessmentId() {
		return assessmentId;
	}

	public void setAssessmentId(Integer assessmentId) {
		this.assessmentId = assessmentId;
	}
	
	

}
