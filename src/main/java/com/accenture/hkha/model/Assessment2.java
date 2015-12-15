package com.accenture.hkha.model;

public class Assessment2 {

	public Assessment2(){
		
	}
	
	private Form form1;
	private Form form2;
	private Form form3;
	private Form form4;
	
	private Integer id;
	private String contract; 
	private String assessmentDate;
	private String floor;
	private String blockZone;
	private String locationFlat;
	private String subFactorItem;
	
	private String createdBy;
	private String createdDate;
	private String assignedTo;
	private String status;
	private String approvedByProf;
	private String approvedByChief;
	
	private String remarks;
	private String attachments;

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getAssignedTo() {
		return assignedTo;
	}

	public void setAssignedTo(String assignedTo) {
		this.assignedTo = assignedTo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getApprovedByProf() {
		return approvedByProf;
	}

	public void setApprovedByProf(String approvedByProf) {
		this.approvedByProf = approvedByProf;
	}

	public String getApprovedByChief() {
		return approvedByChief;
	}

	public void setApprovedByChief(String approvedByChief) {
		this.approvedByChief = approvedByChief;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Form getForm1() {
		return form1;
	}
	
	public Form getForm2() {
		return form2;
	}

	public void setForm2(Form form2) {
		this.form2 = form2;
	}

	public Form getForm3() {
		return form3;
	}

	public void setForm3(Form form3) {
		this.form3 = form3;
	}

	public Form getForm4() {
		return form4;
	}

	public void setForm4(Form form4) {
		this.form4 = form4;
	}

	public void setForm1(Form form1) {
		this.form1 = form1;
	}

	public String getContract() {
		return contract;
	}

	public void setContract(String contract) {
		this.contract = contract;
	}

	public String getAssessmentDate() {
		return assessmentDate;
	}

	public void setAssessmentDate(String assessmentDate) {
		this.assessmentDate = assessmentDate;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getBlockZone() {
		return blockZone;
	}

	public void setBlockZone(String blockZone) {
		this.blockZone = blockZone;
	}

	public String getLocationFlat() {
		return locationFlat;
	}

	public void setLocationFlat(String locationFlat) {
		this.locationFlat = locationFlat;
	}

	public String getSubFactorItem() {
		return subFactorItem;
	}

	public void setSubFactorItem(String subFactorItem) {
		this.subFactorItem = subFactorItem;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getAttachments() {
		return attachments;
	}

	public void setAttachments(String attachments) {
		this.attachments = attachments;
	}


	
}
