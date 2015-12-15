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
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/resources/core/css/calendar.css">
<link rel="stylesheet" href="../../resources/core/css/demo.css">

<link href="../../resources/core/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="../../resources/core/css/calendar.css">

</head>
<body>
	<%@include file="header.jsp" %>

	<div class="col-sm-12 col-md-12">
		<div>
			<h3>Assessment Form</h3>
			<br />
		</div>
		<h4>Conduct Assessment</h4>
		<br />
		<spring:url value="/worklist/${assessmentForm.id}/form/submit" var="assessmentActionUrl" />
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
			 	<tbody>
			 		<tr>
			 			<td class="l-title-fix col-md-2">Contact Title:</td>
			 			<td colspan="5"><form:input path="contract" cssClass="form-control"/></td>
			 		</tr>
			 		<tr>
			 			<td class="l-title-fix col-md-2">Assessment Date:</td>
			 			<td><form:input path="assessmentDate" cssClass="form-control"/></td>
			 			<td class="l-title-fix col-md-2 padding-left-30">Floor:</td>
			 			<td><form:input path="floor" cssClass="form-control"/></td>
			 		</tr>
			 		<tr>
			 			<td class="l-title-fix col-md-2">Block / Zone:</td>
			 			<td><form:input path="blockZone" cssClass="form-control"/></td>
			 			<td class="l-title-fix col-md-2 padding-left-30">Location / Flat:</td>
			 			<td><form:input path="locationFlat" cssClass="form-control"/></td>
			 		</tr>
			 		<tr>
			 			<td class="l-title-fix col-md-2">Sub-Factor / Item:</td>
			 			<td colspan="5"><form:input path="subFactorItem" cssClass="input-sfitem form-control" disabled="true" /></td>
			 		</tr>
			 	</tbody>
			 </table>
			 
			 <table class="table-ca-det table table-bordered">
		        <thead>
		          <tr>
		            <td>Spot</td>
		            <td>Sub-Factor</td>
		            <td colspan="7">Grading</td>
		          </tr>
		
		          <tr class="tr-td-tc">
		            <td colspan="2"></td>
		            <td>A*</td>
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
			
			            <td class="text-center"><form:radiobutton path="form1.soundness" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.soundness" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.soundness" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.soundness" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.soundness" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.soundness" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.soundness" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			          <tr>
			            <td>Evenness</td>
			
			            <td class="text-center"><form:radiobutton path="form1.evenness" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.evenness" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.evenness" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.evenness" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.evenness" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.evenness" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.evenness" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			          <tr>
			            <td>Level</td>
			
			            <td class="text-center"><form:radiobutton path="form1.level" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.level" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.level" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.level" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.level" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.level" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form1.level" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Fall</td>
			
			            <td class="text-center"><form:radiobutton path="form1.fall" value="A+" cssClass="r-size-scale"/></td>
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
			
			            <td class="text-center"><form:radiobutton path="form2.soundness" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.soundness" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.soundness" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.soundness" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.soundness" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.soundness" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.soundness" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Evenness</td>
			
			            <td class="text-center"><form:radiobutton path="form2.evenness" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.evenness" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.evenness" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.evenness" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.evenness" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.evenness" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.evenness" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Level</td>
			
			            <td class="text-center"><form:radiobutton path="form2.level" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.level" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.level" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.level" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.level" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.level" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form2.level" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Fall</td>
			
			            <td class="text-center"><form:radiobutton path="form2.fall" value="A+" cssClass="r-size-scale"/></td>
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
			
			            <td class="text-center"><form:radiobutton path="form3.soundness" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.soundness" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.soundness" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.soundness" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.soundness" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.soundness" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.soundness" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Evenness</td>
			
			            <td class="text-center"><form:radiobutton path="form3.evenness" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.evenness" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.evenness" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.evenness" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.evenness" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.evenness" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.evenness" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Level</td>
			
			            <td class="text-center"><form:radiobutton path="form3.level" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.level" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.level" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.level" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.level" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.level" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form3.level" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Fall</td>
			
			            <td class="text-center"><form:radiobutton path="form3.fall" value="A+" cssClass="r-size-scale"/></td>
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
			
			            <td class="text-center"><form:radiobutton path="form4.soundness" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.soundness" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.soundness" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.soundness" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.soundness" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.soundness" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.soundness" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Evenness</td>
			
			            <td class="text-center"><form:radiobutton path="form4.evenness" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.evenness" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.evenness" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.evenness" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.evenness" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.evenness" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.evenness" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Level</td>
			
			            <td class="text-center"><form:radiobutton path="form4.level" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.level" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.level" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.level" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.level" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.level" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.level" value="N" cssClass="r-size-scale"/></td>
			          </tr>
			
			          <tr>
			            <td>Fall</td>
			
			            <td class="text-center"><form:radiobutton path="form4.fall" value="A+" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.fall" value="A" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.fall" value="B" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.fall" value="C" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.fall" value="D" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.fall" value="E" cssClass="r-size-scale"/></td>
			            <td class="text-center"><form:radiobutton path="form4.fall" value="N" cssClass="r-size-scale"/></td>
			          </tr>
		        </tbody>
		        
		       </table>
		       
		       <div>
		       		<table width="100%">
		       			<tr>
		       				<td align="right" style="padding-right:50px"><b>Remarks:</b></td>
		       				<td align="center">
		       					<form:textarea path="remarks" rows="5" cols="100" cssStyle="border:solid 1px #dfdfd2;"/>
		       				</td>
		       			</tr>
		       			<tr>
		       				<td align="right" style="padding-right:50px"><b>Attachments:</b></td>
		       			</tr>
		       			<c:forEach var="att" items="${attachments}">
		       			<tr>
		       				<td></td>
		       				<td><a href="#">${att}</a></td>
		       			</tr>
		       			</c:forEach>		       			
		       		</table>
		       </div>
		       <div class="buttons t-tmargs" align="right">
		       		<spring:url value="/worklist/${assessmentForm.id}/form/upload" var="upload"/>
		      		<button type="button" class="button button-stable" onclick="location.href='${upload}'">Upload Attachment</button>
		       		<button type="submit" class="button button-stable">Confirm</button>
		       </div>

			<br/>
		</form:form>
	</div>

	<script>

	</script>

</body>
</html>