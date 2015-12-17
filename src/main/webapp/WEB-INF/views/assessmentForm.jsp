<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assessment Form</title>


<link rel="stylesheet" href="../../resources/core/css/demo.css">

<link href="../../resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../../resources/core/css/calendar.css">
<script language="javascript">

function saveAssessment(assessmentFormId){
	alert("Assessment has been saved!");
	window.document.forms[0].action=window.document.forms[0].saveAction.value;
	window.document.forms[0].submit();
}
</script>
</head>
<body>
	<%@include file="header.jsp" %>

	<div class="container">
		<div class="col-sm-12 col-md-12">

			<div>
				<h3>Assessment Form</h3>
				<br />
			</div>
			<h4>Conduct Assessment</h4>
			<br />
			<spring:url value="/worklist/${assessmentForm.id}/form/confirm" var="assessmentActionUrl" />
			<spring:url value="/worklist/${assessmentForm.id}/form/save" var="saveActionUrl" />
			<form:form method="post" modelAttribute="assessmentForm"
				action="${assessmentActionUrl}">

				 <table class="table no-border-top-all">
				 	<form:hidden path="id" />
				 	<form:hidden path="createdBy" />
				 	<form:hidden path="createdDate" />
				 	<form:hidden path="assignedTo" />
				 	<form:hidden path="status" />
				 	<form:hidden path="subFactorItem" />
				 	<form:hidden path="approvedByProf" />
				 	<form:hidden path="approvedByChief" />
				 	<form:hidden path="attachments" />
					<input type="hidden" id="saveAction" name="saveAction" value=${saveActionUrl}/>
				 	<tbody>
				 		<tr>
				 			<td class="l-title-fix col-md-2">Contact Title:</td>
				 			<td colspan="5"><form:input path="contract" cssClass="form-control"/></td>
				 		</tr>
				 		<tr>
				 			<td class="l-title-fix col-md-2">Assessment Date:</td>
				 			<td><form:input path="assessmentDate" cssClass="form-control"/></td>
				 			<%-- <td class="l-title-fix col-md-2 padding-left-30">Floor:</td>
				 			<td><form:input path="floor" cssClass="form-control"/></td> --%>
				 		</tr>
				 		<%-- <tr>
				 			<td class="l-title-fix col-md-2">Block / Zone:</td>
				 			<td><form:input path="blockZone" cssClass="form-control"/></td>
				 			<td class="l-title-fix col-md-2 padding-left-30">Location / Flat:</td>
				 			<td><form:input path="locationFlat" cssClass="form-control"/></td>
				 		</tr> --%>
				 		<%-- <tr>
				 			<td class="l-title-fix col-md-2">Sub-Factor / Item:</td>
				 			<td colspan=	"5"><form:input path="subFactorItem" cssClass="input-sfitem form-control" disabled="true" /></td>
				 		</tr> --%>
				 	</tbody>
				 </table>
				<h4>AI-1&nbsp;&nbsp;&nbsp;&nbsp;Floor</h4>
				 <table class="table-ca-det table table-bordered">
			        <thead>
			        <tr>
			          	<td>Sub-Factor / Item</td>
			          	<td colspan="8">${assessmentForm.subFactorItem}</td>
			          </tr>
			          <tr>
			           <td>Floor: <form:input path="floor" cssClass="form-control"/></td>
			            <td>Block / Zone: <form:input path="blockZone" cssClass="form-control"/></td>
			            <td colspan="7">Location / Flat: <form:input path="locationFlat" cssClass="form-control"/></td>
			          </tr>

			          <tr>
			           <td></td>
			            <td></td>
			            <td colspan="7">Grading</td>
			          </tr>

			          <tr class="tr-td-tc">
			            <td>Spot</td>
			            <td></td>
			            <td>A</td>
			            <td>B</td>
			            <td>C</td>
			            <td>D</td>
			            <td>E</td>
			            <td>N</td>
			          </tr>
			        </thead>
			        <tbody>
			        	  <tr>
				            <td rowspan="4">1</td>
				            <td>Soundness</td>

				            
				            <td class="text-center"><form:radiobutton path="form1.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>
				          <tr>
				            <td>Evenness</td>

				            
				            <td class="text-center"><form:radiobutton path="form1.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>
				          <tr>
				            <td>Level</td>

				            
				            <td class="text-center"><form:radiobutton path="form1.level" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.level" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.level" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.level" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.level" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.level" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Fall</td>

				            
				            <td class="text-center"><form:radiobutton path="form1.fall" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.fall" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.fall" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.fall" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.fall" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form1.fall" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				          <tr>
				            <td rowspan="4">2</td>
				            <td>Soundness</td>

				            
				            <td class="text-center"><form:radiobutton path="form2.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Evenness</td>

				            
				            <td class="text-center"><form:radiobutton path="form2.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Level</td>

				            
				            <td class="text-center"><form:radiobutton path="form2.level" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.level" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.level" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.level" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.level" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.level" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Fall</td>

				            
				            <td class="text-center"><form:radiobutton path="form2.fall" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.fall" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.fall" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.fall" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.fall" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form2.fall" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				          <tr>
				            <td rowspan="4">3</td>
				            <td>Soundness</td>

				            
				            <td class="text-center"><form:radiobutton path="form3.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Evenness</td>

				            
				            <td class="text-center"><form:radiobutton path="form3.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Level</td>

				            
				            <td class="text-center"><form:radiobutton path="form3.level" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.level" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.level" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.level" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.level" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.level" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Fall</td>

				            
				            <td class="text-center"><form:radiobutton path="form3.fall" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.fall" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.fall" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.fall" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.fall" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form3.fall" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				       	  <tr>
				            <td rowspan="4">4</td>
				            <td>Soundness</td>

				            
				            <td class="text-center"><form:radiobutton path="form4.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Evenness</td>

				            
				            <td class="text-center"><form:radiobutton path="form4.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Level</td>

				            
				            <td class="text-center"><form:radiobutton path="form4.level" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.level" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.level" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.level" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.level" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.level" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Fall</td>

				            
				            <td class="text-center"><form:radiobutton path="form4.fall" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.fall" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.fall" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.fall" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.fall" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form4.fall" value="N" cssClass="r-size-scale"/></td>
				          </tr>
			        </tbody>					
			       </table>
					<br>
					<div align="left"><a href="#top">Back to top of page</a></div>
					<div align="right"><button type="button" class="button button-stable" onclick="javascript:saveAssessment(${assessmentForm.id})">Save</button></div>	
				   <br>
					<table class="table-ca-det table table-bordered">
			        <thead>
			        <tr>
			          	<td>Sub-Factor / Item</td>
			          	<td colspan="8">${assessmentForm.subFactorItem2}</td>
			          </tr>
			          <tr>
			           <td>Floor: <form:input path="floor2" cssClass="form-control"/></td>
			            <td>Block / Zone: <form:input path="blockZone2" cssClass="form-control"/></td>
			            <td colspan="7">Location / Flat: <form:input path="locationFlat2" cssClass="form-control"/></td>
			          </tr>

			          <tr>
			           <td></td>
			            <td></td>
			            <td colspan="7">Grading</td>
			          </tr>

			          <tr class="tr-td-tc">
			            <td>Spot</td>
			            <td></td>
			            <td>A</td>
			            <td>B</td>
			            <td>C</td>
			            <td>D</td>
			            <td>E</td>
			            <td>N</td>
			          </tr>
			        </thead>
			        <tbody>
			        	  <tr>
				            <td rowspan="3">1</td>

				            <td>Evenness</td>

				            
				            <td class="text-center"><form:radiobutton path="form21.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>
				          <tr>
				            <td>Level</td>

				            
				            <td class="text-center"><form:radiobutton path="form21.level" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.level" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.level" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.level" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.level" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.level" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Fall</td>

				            
				            <td class="text-center"><form:radiobutton path="form21.fall" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.fall" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.fall" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.fall" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.fall" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form21.fall" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				          <tr>
				            <td rowspan="3">2</td>
				            <td>Evenness</td>

				            
				            <td class="text-center"><form:radiobutton path="form22.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Level</td>


				            <td class="text-center"><form:radiobutton path="form22.level" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.level" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.level" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.level" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.level" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.level" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Fall</td>
				            <td class="text-center"><form:radiobutton path="form22.fall" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.fall" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.fall" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.fall" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.fall" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form22.fall" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				          <tr>
				            <td rowspan="3">3</td>

				            <td>Evenness</td>

				            <td class="text-center"><form:radiobutton path="form23.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Level</td>

				            <td class="text-center"><form:radiobutton path="form23.level" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.level" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.level" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.level" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.level" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.level" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Fall</td>

				            <td class="text-center"><form:radiobutton path="form23.fall" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.fall" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.fall" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.fall" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.fall" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form23.fall" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				       	  <tr>
				            <td rowspan="3">4</td>

				            <td>Evenness</td>

				            <td class="text-center"><form:radiobutton path="form24.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Level</td>

				            <td class="text-center"><form:radiobutton path="form24.level" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.level" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.level" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.level" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.level" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.level" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr>
				            <td>Fall</td>

				            <td class="text-center"><form:radiobutton path="form24.fall" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.fall" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.fall" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.fall" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.fall" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form24.fall" value="N" cssClass="r-size-scale"/></td>
				          </tr>
			        </tbody>

			       </table>
			       <br>
					<div align="left"><a href="#top">Back to top of page</a></div>					
					<div align="right"><button type="button" class="button button-stable" onclick="javascript:saveAssessment(${assessmentForm.id})">Save</button></div>	
				   <br>
									<table class="table-ca-det table table-bordered">
			        <thead>
			        <tr>
			          	<td>Sub-Factor / Item</td>
			          	<td colspan="8">${assessmentForm.subFactorItem3}</td>
			          </tr>
			          <tr>
			           <td>Floor: <form:input path="floor3" cssClass="form-control"/></td>
			            <td>Block / Zone: <form:input path="blockZone3" cssClass="form-control"/></td>
			            <td colspan="7">Location / Flat: <form:input path="locationFlat3" cssClass="form-control"/></td>
			          </tr>

			          <tr>
			           <td></td>
			            <td></td>
			            <td colspan="7">Grading</td>
			          </tr>

			          <tr class="tr-td-tc">
			            <td>Spot</td>
			            <td></td>
			            <td>A</td>
			            <td>B</td>
			            <td>C</td>
			            <td>D</td>
			            <td>E</td>
			            <td>N</td>
			          </tr>
			        </thead>
			        <tbody>
			        	  <tr>
				            <td rowspan="1">1</td>
				            
				            
				            <td>Soundness</td>

				            <td class="text-center"><form:radiobutton path="form31.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form31.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form31.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form31.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form31.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form31.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				          <tr>
				            <td rowspan="1">2</td>
				            <td>Soundness</td>

				            <td class="text-center"><form:radiobutton path="form32.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form32.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form32.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form32.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form32.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form32.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>


				          <tr><td></td></tr>

				          <tr>
				            <td rowspan="1">3</td>
				            
				            <td>Soundness</td>

				            <td class="text-center"><form:radiobutton path="form33.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form33.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form33.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form33.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form33.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form33.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>


				          <tr><td></td></tr>

				       	  <tr>
				            <td rowspan="1">4</td>
				            
				            <td>Soundness</td>

				            <td class="text-center"><form:radiobutton path="form34.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form34.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form34.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form34.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form34.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form34.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>

			        </tbody>

			       </table>
				   <br>
					<div align="left"><a href="#top">Back to top of page</a></div>
					<div align="right"><button type="button" class="button button-stable" onclick="javascript:saveAssessment(${assessmentForm.id})">Save</button></div>	
				   <br>
				   <br>
				   <h4>AI-2&nbsp;&nbsp;&nbsp;&nbsp;Internal Wall Finishes</h4>
				   	<table class="table-ca-det table table-bordered">
								
			        <thead>
			        <tr>
			          	<td>Sub-Factor / Item</td>
			          	<td colspan="8">${assessmentForm.subFactorItem4}</td>
			          </tr>
			          <tr>
			           <td>Floor: <form:input path="floor4" cssClass="form-control"/></td>
			            <td>Block / Zone: <form:input path="blockZone4" cssClass="form-control"/></td>
			            <td colspan="7">Location / Flat: <form:input path="locationFlat4" cssClass="form-control"/></td>
			          </tr>

			          <tr>
			           <td></td>
			            <td></td>
			            <td colspan="7">Grading</td>
			          </tr>

			          <tr class="tr-td-tc">
			            <td>Spot</td>
			            <td></td>
			            <td>A</td>
			            <td>B</td>
			            <td>C</td>
			            <td>D</td>
			            <td>E</td>
			            <td>N</td>
			          </tr>
			        </thead>
			        <tbody>
			        	  <tr>
				            <td rowspan="4">1</td>
				            
							<td>Lintol</td>

				            <td class="text-center"><form:radiobutton path="form41.lintol" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.lintol" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.lintol" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.lintol" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.lintol" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.lintol" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Evenness</td>                                   
                                                                                
				            
				            <td class="text-center"><form:radiobutton path="form41.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Joint Width</td>                                      
                                                                                
				            <td class="text-center"><form:radiobutton path="form41.jointwidth" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.jointwidth" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.jointwidth" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.jointwidth" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.jointwidth" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.jointwidth" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
                                                                                
				          <tr>                                                  
				            <td>Finish</td>                                       
                                                                                
				            <td class="text-center"><form:radiobutton path="form41.finish" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.finish" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.finish" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.finish" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.finish" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form41.finish" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				           <tr>
				            <td rowspan="4">2</td>
				            
							<td>Lintol</td>

				            <td class="text-center"><form:radiobutton path="form42.lintol" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.lintol" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.lintol" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.lintol" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.lintol" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.lintol" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Evenness</td>                                   
                                                                                
				            <td class="text-center"><form:radiobutton path="form42.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Joint Width</td>                                      
                                                                                
				            <td class="text-center"><form:radiobutton path="form42.jointwidth" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.jointwidth" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.jointwidth" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.jointwidth" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.jointwidth" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.jointwidth" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
                                                                                
				          <tr>                                                  
				            <td>Finish</td>                                       
                                                                                
				            <td class="text-center"><form:radiobutton path="form42.finish" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.finish" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.finish" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.finish" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.finish" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form42.finish" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>
						  
						   <tr>
				            <td rowspan="4">3</td>
				            
							<td>Lintol</td>

				            <td class="text-center"><form:radiobutton path="form43.lintol" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.lintol" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.lintol" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.lintol" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.lintol" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.lintol" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Evenness</td>                                   
                                                                                
				            <td class="text-center"><form:radiobutton path="form43.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Joint Width</td>                                      
                                                                                
				            <td class="text-center"><form:radiobutton path="form43.jointwidth" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.jointwidth" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.jointwidth" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.jointwidth" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.jointwidth" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.jointwidth" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
                                                                                
				          <tr>                                                  
				            <td>Finish</td>                                       
                                                                                
				            <td class="text-center"><form:radiobutton path="form43.finish" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.finish" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.finish" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.finish" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.finish" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form43.finish" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>
						  
						   <tr>
				            <td rowspan="4">4</td>
				            
							<td>Lintol</td>

				            <td class="text-center"><form:radiobutton path="form44.lintol" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.lintol" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.lintol" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.lintol" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.lintol" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.lintol" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Evenness</td>                                   
                                                                                
				            <td class="text-center"><form:radiobutton path="form44.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Joint Width</td>                                      
                                                                                
				            <td class="text-center"><form:radiobutton path="form44.jointwidth" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.jointwidth" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.jointwidth" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.jointwidth" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.jointwidth" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.jointwidth" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
                                                                                
				          <tr>                                                  
				            <td>Finish</td>                                       
                                                                                
				            <td class="text-center"><form:radiobutton path="form44.finish" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.finish" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.finish" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.finish" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.finish" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form44.finish" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          
			        </tbody>

			       </table>
				   <br>
					<div align="left"><a href="#top">Back to top of page</a></div>
					<div align="right"><button type="button" class="button button-stable" onclick="javascript:saveAssessment(${assessmentForm.id})">Save</button></div>	
				   <br>
				   				<table class="table-ca-det table table-bordered">
			        <thead>
			        <tr>
			          	<td>Sub-Factor / Item</td>
			          	<td colspan="8">${assessmentForm.subFactorItem5}</td>
			          </tr>
			          <tr>
			           <td>Floor: <form:input path="floor5" cssClass="form-control"/></td>
			            <td>Block / Zone: <form:input path="blockZone5" cssClass="form-control"/></td>
			            <td colspan="7">Location / Flat: <form:input path="locationFlat5" cssClass="form-control"/></td>
			          </tr>

			          <tr>
			           <td></td>
			            <td></td>
			            <td colspan="7">Grading</td>
			          </tr>

			          <tr class="tr-td-tc">
			            <td>Spot</td>
			            <td></td>
			            <td>A</td>
			            <td>B</td>
			            <td>C</td>
			            <td>D</td>
			            <td>E</td>
			            <td>N</td>
			          </tr>
			        </thead>
			        <tbody>
			        	  <tr>
				            <td rowspan="4">1</td>
				            
							<td>Evenness</td>

				            <td class="text-center"><form:radiobutton path="form51.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Plumb</td>                                   
                                                                                
				            <td class="text-center"><form:radiobutton path="form51.plumb" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.plumb" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.plumb" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.plumb" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.plumb" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.plumb" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Soundness</td>                                      
                                                                                
				            <td class="text-center"><form:radiobutton path="form51.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
                                                                                
				          <tr>                                                  
				            <td>Finish</td>                                       
                                                                                
				            <td class="text-center"><form:radiobutton path="form51.finish" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.finish" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.finish" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.finish" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.finish" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form51.finish" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				           <tr>
				            <td rowspan="4">2</td>
				            
							<td>Evenness</td>

				            <td class="text-center"><form:radiobutton path="form52.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Plumb</td>                                   
                                                                                
				            <td class="text-center"><form:radiobutton path="form52.plumb" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.plumb" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.plumb" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.plumb" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.plumb" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.plumb" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Soundness</td>                                      
                                                                                
				            <td class="text-center"><form:radiobutton path="form52.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
                                                                                
				          <tr>                                                  
				            <td>Finish</td>                                       
                                                                                
				            <td class="text-center"><form:radiobutton path="form52.finish" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.finish" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.finish" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.finish" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.finish" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form52.finish" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>
						  
						  <tr>
				            <td rowspan="4">3</td>
				            
							<td>Evenness</td>

				            <td class="text-center"><form:radiobutton path="form53.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Plumb</td>                                   
                                                                                
				            <td class="text-center"><form:radiobutton path="form53.plumb" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.plumb" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.plumb" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.plumb" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.plumb" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.plumb" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Soundness</td>                                      
                                                                                
				            <td class="text-center"><form:radiobutton path="form53.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
                                                                                
				          <tr>                                                  
				            <td>Finish</td>                                       
                                                                                
				            <td class="text-center"><form:radiobutton path="form53.finish" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.finish" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.finish" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.finish" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.finish" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form53.finish" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>
						  
						  <tr>
				            <td rowspan="4">4</td>
				            
							<td>Evenness</td>

				            <td class="text-center"><form:radiobutton path="form54.evenness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.evenness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.evenness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.evenness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.evenness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.evenness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Plumb</td>                                   
                                                                                
				            <td class="text-center"><form:radiobutton path="form54.plumb" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.plumb" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.plumb" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.plumb" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.plumb" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.plumb" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
				          <tr>                                                  
				            <td>Soundness</td>                                      
                                                                                
				            <td class="text-center"><form:radiobutton path="form54.soundness" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.soundness" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.soundness" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.soundness" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.soundness" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.soundness" value="N" cssClass="r-size-scale"/></td>
				          </tr>                                                 
                                                                                
				          <tr>                                                  
				            <td>Finish</td>                                       
                                                                                
				            <td class="text-center"><form:radiobutton path="form54.finish" value="A" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.finish" value="B" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.finish" value="C" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.finish" value="D" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.finish" value="E" cssClass="r-size-scale"/></td>
				            <td class="text-center"><form:radiobutton path="form54.finish" value="N" cssClass="r-size-scale"/></td>
				          </tr>

				          <tr><td></td></tr>

				          
			        </tbody>

			       </table>
				   <br>
					<div align="left"><a href="#top">Back to top of page</a></div>
					<div align="right"><button type="button" class="button button-stable" onclick="javascript:saveAssessment(${assessmentForm.id})">Save</button></div>	
				   <br>
			       <div>
			       		<table width="100%">
			       			<tr>
			       				<td align="right" style="padding-right:50px"><b>Remarks:</b></td>
			       				<td align="center">
			       					<form:textarea path="remarks" rows="5" cols="100" cssStyle="border:solid 1px #dfdfd2;"/>
			       				</td>
			       			</tr>
			       		</table>
			       </div>
			       <br>
			       <div>
			       		<table width="100%">
			       			<tr>
			       				<td width="25%" align="left" style="padding-right:50px"><b>Attachments:</b></td>
			       			</tr>
			       			<c:forEach var="att" items="${attachments}">
			       			<tr>
			       				<spring:url value="/download/${att}" var="download"/>
			       				<td></td>
			       				<td><a href="${download}">${att}</a></td>
			       			</tr>
			       			</c:forEach>
			       		</table>
			       </div>
			       <div class="buttons t-tmargs" align="right">
				       	<spring:url value="/worklist/${assessmentForm.id}/form/upload" var="upload"/>
						<button type="button" class="button button-stable" onclick="javascript:history.back()">Back to list</button>
						<button type="button" class="button button-stable" onclick="location.href='${upload}'">Upload Attachment</button>
			       		<button type="submit" class="button button-stable">Confirm</button>
			       </div>
				<br/>
			</form:form>
		</div>
	</div>
	<script>

	</script>

</body>
</html>