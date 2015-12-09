/**
 * 
 */
package com.accenture.hkha.model;

/**
 * @author joseph.r.a.balane
 *
 */
public class Assessment {
	
	private Integer id;
	private String project;
	private String subContractor;
	private String contractNumber;
	private String assessmentStartDate;
	private String assessmentEndDate;
	private String status;
	private String createdDate;
	private String createdBy;
	private String assignedTo;
	
	private String score1;
	private String score2;
	private String score3;
	private String score4;
	private String score5;
	private String score6;
	private String score7;
	private String score8;
	private String score9;
	private String score10;
	private String score11;
	private String score12;
	private String score13;
	private String score14;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}
	public String getSubContractor() {
		return subContractor;
	}
	public void setSubContractor(String subContractor) {
		this.subContractor = subContractor;
	}
	public String getContractNumber() {
		return contractNumber;
	}
	public void setContractNumber(String contractNumber) {
		this.contractNumber = contractNumber;
	}
	public String getAssessmentStartDate() {
		return assessmentStartDate;
	}
	public void setAssessmentStartDate(String assessmentStartDate) {
		this.assessmentStartDate = assessmentStartDate;
	}
	public String getAssessmentEndDate() {
		return assessmentEndDate;
	}
	public void setAssessmentEndDate(String assessmentEndDate) {
		this.assessmentEndDate = assessmentEndDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getScore1() {
		return score1;
	}
	public void setScore1(String score1) {
		this.score1 = score1;
	}
	public String getScore2() {
		return score2;
	}
	public void setScore2(String score2) {
		this.score2 = score2;
	}
	public String getScore3() {
		return score3;
	}
	public void setScore3(String score3) {
		this.score3 = score3;
	}
	public String getScore4() {
		return score4;
	}
	public void setScore4(String score4) {
		this.score4 = score4;
	}
	public String getScore5() {
		return score5;
	}
	public void setScore5(String score5) {
		this.score5 = score5;
	}
	public String getScore6() {
		return score6;
	}
	public void setScore6(String score6) {
		this.score6 = score6;
	}
	public String getScore7() {
		return score7;
	}
	public void setScore7(String score7) {
		this.score7 = score7;
	}
	public String getScore8() {
		return score8;
	}
	public void setScore8(String score8) {
		this.score8 = score8;
	}
	public String getScore9() {
		return score9;
	}
	public void setScore9(String score9) {
		this.score9 = score9;
	}
	public String getScore10() {
		return score10;
	}
	public void setScore10(String score10) {
		this.score10 = score10;
	}
	public String getScore11() {
		return score11;
	}
	public void setScore11(String score11) {
		this.score11 = score11;
	}
	public String getScore12() {
		return score12;
	}
	public void setScore12(String score12) {
		this.score12 = score12;
	}
	public String getScore13() {
		return score13;
	}
	public void setScore13(String score13) {
		this.score13 = score13;
	}
	public String getScore14() {
		return score14;
	}
	public void setScore14(String score14) {
		this.score14 = score14;
	}
	
	public String getAssignedTo() {
		return assignedTo;
	}
	public void setAssignedTo(String assignedTo) {
		this.assignedTo = assignedTo;
	}
	
	public String toString(){
		return "id= " + id + " | " + "project= " + project + " | " + "sub-contractor= " + subContractor + " | " + "contract number= " + contractNumber + " |"
				+ "created date= " + createdDate + " | " + "created by= " + createdBy + " | " + "assigned to= " + assignedTo;
	}

}
