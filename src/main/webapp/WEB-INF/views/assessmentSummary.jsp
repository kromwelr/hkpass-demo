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
<title>Assessment Summary</title>

<link rel="stylesheet" href="../../../resources/core/css/calendar.css">
<link rel="stylesheet" href="../../../resources/core/css/demo.css">
<link href="../../../resources/core/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<%@include file="header.jsp" %>
	<div class="container">
		<div class="col-sm-12 col-md-12">

			<table class="table-ca-con table table-responsive no-border-top-all">
		        <tr>
		          <td class="col-md-1"><p class="t-label-pad-ctitle">Contact Title:</p></td>
		          <td class="t-label-pad-ctitle t-underline t-ca-con-indent col-md-12" colspan="5"><b>${assessment.contract}</b></td>
		        </tr>
		        <tr>
		          <td></td>
		          <td><p class="t-label-pad-adate text-right">Assessment Date:</p></td>
		          <td class="t-underline t-ca-con-indent col-md-4"><b>${assessment.assessmentDate}</b></td>
		        </tr>
	      	</table>

		      <div class="row t-tmargs">
		        <p class="t-ca-con-t2-th">AI-1</p>
		        <p class="t-ca-con-t2-th">FLOOR</p>
		      </div>


			 <table class="table table-bordered table-responsive">
				 <thead>
		          <tr>
		            <th colspan="4">Sub-Factor / Item</th>
		            <th colspan="14">Block / Zone: ${assessment.blockZone}</th>
		            <th colspan="14">Floor: ${assessment.floor}</th>
		          </tr>

		          <tr>
		            <td colspan="4" rowspan="3">${assessment.subFactorItem}</td>
		            <th colspan="28">Location / Flat: ${assessment.locationFlat}</th>
		          </tr>

		          <tr>
		            <th colspan="7">Spot 1</th>
		            <th colspan="7">Spot 2</th>
		            <th colspan="7">Spot 3</th>
		            <th colspan="7">Spot 4</th>
		          </tr>

		          <tr>
		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>
		          </tr>
		        </thead>
		        <tbody>
		          <tr>
		            <td colspan="1">1.</td>
		            <td colspan="3">Soundness</td>

		            <td class="${assessment.form1.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form1.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form1.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form1.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form1.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form1.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form1.soundness eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form2.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form2.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form2.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form2.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form2.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form2.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form2.soundness eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form3.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form3.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form3.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form3.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form3.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form3.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form3.soundness eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form4.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form4.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form4.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form4.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form4.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form4.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form4.soundness eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>2.</td>
		            <td colspan="3">Evenness</td>

		            <td class="${assessment.form1.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form1.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form1.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form1.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form1.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form1.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form1.evenness eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form2.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form2.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form2.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form2.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form2.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form2.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form2.evenness eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form3.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form3.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form3.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form3.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form3.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form3.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form3.evenness eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form4.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form4.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form4.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form4.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form4.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form4.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form4.evenness eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>3.</td>
		            <td colspan="3">Level</td>

		            <td class="${assessment.form1.level eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form1.level eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form1.level eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form1.level eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form1.level eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form1.level eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form1.level eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form2.level eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form2.level eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form2.level eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form2.level eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form2.level eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form2.level eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form2.level eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form3.level eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form3.level eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form3.level eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form3.level eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form3.level eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form3.level eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form3.level eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form4.level eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form4.level eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form4.level eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form4.level eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form4.level eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form4.level eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form4.level eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>4.</td>
		            <td colspan="3">Fall</td>

		            <td class="${assessment.form1.fall eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form1.fall eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form1.fall eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form1.fall eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form1.fall eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form1.fall eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form1.fall eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form2.fall eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form2.fall eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form2.fall eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form2.fall eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form2.fall eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form2.fall eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form2.fall eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form3.fall eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form3.fall eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form3.fall eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form3.fall eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form3.fall eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form3.fall eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form3.fall eq 'N' ? 'selected':''}"></td>

		            <td class="${assessment.form4.fall eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form4.fall eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form4.fall eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form4.fall eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form4.fall eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form4.fall eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form4.fall eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Collected</b></td>
		            <td class="text-center" colspan="2">A*</td>
		            <td class="text-center" colspan="2">A</td>
		            <td class="text-center" colspan="2">B</td>
		            <td class="text-center" colspan="2">C</td>
		            <td class="text-center" colspan="2">D</td>
		            <td class="text-center" colspan="2">E</td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" border="0" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Sum</b></td>
		            <td colspan="2" class="${((assessment.form1.soundness eq 'A+') or  (assessment.form1.evenness eq 'A+') or (assessment.form1.level eq 'A+') or (assessment.form1.fall eq 'A+') or (assessment.form2.soundness eq 'A+') or  (assessment.form2.evenness eq 'A+') or (assessment.form2.level eq 'A+') or (assessment.form2.fall eq 'A+') or (assessment.form3.soundness eq 'A+') or  (assessment.form3.evenness eq 'A+') or (assessment.form3.level eq 'A+') or (assessment.form3.fall eq 'A+') or (assessment.form4.soundness eq 'A+') or  (assessment.form4.evenness eq 'A+') or (assessment.form4.level eq 'A+') or (assessment.form4.fall eq 'A+')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form1.soundness eq 'A') or  (assessment.form1.evenness eq 'A') or (assessment.form1.level eq 'A') or (assessment.form1.fall eq 'A') or (assessment.form2.soundness eq 'A') or  (assessment.form2.evenness eq 'A') or (assessment.form2.level eq 'A') or (assessment.form2.fall eq 'A') or (assessment.form3.soundness eq 'A') or  (assessment.form3.evenness eq 'A') or (assessment.form3.level eq 'A') or (assessment.form3.fall eq 'A') or (assessment.form4.soundness eq 'A') or  (assessment.form4.evenness eq 'A') or (assessment.form4.level eq 'A') or (assessment.form4.fall eq 'A')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form1.soundness eq 'B') or  (assessment.form1.evenness eq 'B') or (assessment.form1.level eq 'B') or (assessment.form1.fall eq 'B') or (assessment.form2.soundness eq 'B') or  (assessment.form2.evenness eq 'B') or (assessment.form2.level eq 'B') or (assessment.form2.fall eq 'B') or (assessment.form3.soundness eq 'B') or  (assessment.form3.evenness eq 'B') or (assessment.form3.level eq 'B') or (assessment.form3.fall eq 'B') or (assessment.form4.soundness eq 'B') or  (assessment.form4.evenness eq 'B') or (assessment.form4.level eq 'B') or (assessment.form4.fall eq 'B')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form1.soundness eq 'C') or  (assessment.form1.evenness eq 'C') or (assessment.form1.level eq 'C') or (assessment.form1.fall eq 'C') or (assessment.form2.soundness eq 'C') or  (assessment.form2.evenness eq 'C') or (assessment.form2.level eq 'C') or (assessment.form2.fall eq 'C') or (assessment.form3.soundness eq 'C') or  (assessment.form3.evenness eq 'C') or (assessment.form3.level eq 'C') or (assessment.form3.fall eq 'C') or (assessment.form4.soundness eq 'C') or  (assessment.form4.evenness eq 'C') or (assessment.form4.level eq 'C') or (assessment.form4.fall eq 'C')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form1.soundness eq 'D') or  (assessment.form1.evenness eq 'D') or (assessment.form1.level eq 'D') or (assessment.form1.fall eq 'D') or (assessment.form2.soundness eq 'D') or  (assessment.form2.evenness eq 'D') or (assessment.form2.level eq 'D') or (assessment.form2.fall eq 'D') or (assessment.form3.soundness eq 'D') or  (assessment.form3.evenness eq 'D') or (assessment.form3.level eq 'D') or (assessment.form3.fall eq 'D') or (assessment.form4.soundness eq 'D') or  (assessment.form4.evenness eq 'D') or (assessment.form4.level eq 'D') or (assessment.form4.fall eq 'D')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form1.soundness eq 'E') or  (assessment.form1.evenness eq 'E') or (assessment.form1.level eq 'E') or (assessment.form1.fall eq 'E') or (assessment.form2.soundness eq 'E') or  (assessment.form2.evenness eq 'E') or (assessment.form2.level eq 'E') or (assessment.form2.fall eq 'E') or (assessment.form3.soundness eq 'E') or  (assessment.form3.evenness eq 'E') or (assessment.form3.level eq 'E') or (assessment.form3.fall eq 'E') or (assessment.form4.soundness eq 'E') or  (assessment.form4.evenness eq 'E') or (assessment.form4.level eq 'E') or (assessment.form4.fall eq 'E')) ? 'selected':''}"></td>
		          </tr>

	        	</tbody>
			 </table>

			 <table class="table table-bordered table-responsive">
				 <thead>
		          <tr>
		            <th colspan="4">Sub-Factor / Item</th>
		            <th colspan="14">Block / Zone: ${assessment.blockZone2}</th>
		            <th colspan="14">Floor: ${assessment.floor2}</th>
		          </tr>

		          <tr>
		            <td colspan="4" rowspan="3">${assessment.subFactorItem2}</td>
		            <th colspan="28">Location / Flat: ${assessment.locationFlat2}</th>
		          </tr>

		          <tr>
		            <th colspan="7">Spot 1</th>
		            <th colspan="7">Spot 2</th>
		            <th colspan="7">Spot 3</th>
		            <th colspan="7">Spot 4</th>
		          </tr>

		          <tr>
		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>
		          </tr>
		        </thead>
		        <tbody>
		         
		          <tr>
		            <td>1.</td>
		            <td colspan="3">Evenness</td>

		            <td class="${assessment.form21.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form21.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form21.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form21.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form21.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form21.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form21.evenness eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form22.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form22.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form22.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form22.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form22.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form22.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form22.evenness eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form23.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form23.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form23.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form23.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form23.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form23.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form23.evenness eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form24.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form24.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form24.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form24.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form24.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form24.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form24.evenness eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>2.</td>
		            <td colspan="3">Level</td>

		            <td class="${assessment.form21.level eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form21.level eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form21.level eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form21.level eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form21.level eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form21.level eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form21.level eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form22.level eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form22.level eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form22.level eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form22.level eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form22.level eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form22.level eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form22.level eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form23.level eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form23.level eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form23.level eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form23.level eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form23.level eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form23.level eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form23.level eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form24.level eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form24.level eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form24.level eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form24.level eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form24.level eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form24.level eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form24.level eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>3.</td>
		            <td colspan="3">Fall</td>

		            <td class="${assessment.form21.fall eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form21.fall eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form21.fall eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form21.fall eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form21.fall eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form21.fall eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form21.fall eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form22.fall eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form22.fall eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form22.fall eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form22.fall eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form22.fall eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form22.fall eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form22.fall eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form23.fall eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form23.fall eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form23.fall eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form23.fall eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form23.fall eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form23.fall eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form23.fall eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form24.fall eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form24.fall eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form24.fall eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form24.fall eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form24.fall eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form24.fall eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form24.fall eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Collected</b></td>
		            <td class="text-center" colspan="2">A*</td>
		            <td class="text-center" colspan="2">A</td>
		            <td class="text-center" colspan="2">B</td>
		            <td class="text-center" colspan="2">C</td>
		            <td class="text-center" colspan="2">D</td>
		            <td class="text-center" colspan="2">E</td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" border="0" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Sum</b></td>
		            <td colspan="2" class="${((assessment.form21.evenness eq 'A+') or (assessment.form21.level eq 'A+') or (assessment.form21.fall eq 'A+') or (assessment.form22.evenness eq 'A+') or (assessment.form22.level eq 'A+') or (assessment.form22.fall eq 'A+') or  (assessment.form23.evenness eq 'A+') or (assessment.form23.level eq 'A+') or (assessment.form23.fall eq 'A+') or  (assessment.form24.evenness eq 'A+') or (assessment.form24.level eq 'A+') or (assessment.form24.fall eq 'A+')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form21.evenness eq 'A') or (assessment.form21.level eq 'A') or (assessment.form21.fall eq 'A') or (assessment.form22.evenness eq 'A') or (assessment.form22.level eq 'A') or (assessment.form22.fall eq 'A') or  (assessment.form23.evenness eq 'A') or (assessment.form23.level eq 'A') or (assessment.form23.fall eq 'A') or  (assessment.form24.evenness eq 'A') or (assessment.form24.level eq 'A') or (assessment.form24.fall eq 'A')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form21.evenness eq 'B') or (assessment.form21.level eq 'B') or (assessment.form21.fall eq 'B') or (assessment.form22.evenness eq 'B') or (assessment.form22.level eq 'B') or (assessment.form22.fall eq 'B') or  (assessment.form23.evenness eq 'B') or (assessment.form23.level eq 'B') or (assessment.form23.fall eq 'B') or  (assessment.form24.evenness eq 'B') or (assessment.form24.level eq 'B') or (assessment.form24.fall eq 'B')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form21.evenness eq 'C') or (assessment.form21.level eq 'C') or (assessment.form21.fall eq 'C') or (assessment.form22.evenness eq 'C') or (assessment.form22.level eq 'C') or (assessment.form22.fall eq 'C') or  (assessment.form23.evenness eq 'C') or (assessment.form23.level eq 'C') or (assessment.form23.fall eq 'C') or  (assessment.form24.evenness eq 'C') or (assessment.form24.level eq 'C') or (assessment.form24.fall eq 'C')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form21.evenness eq 'D') or (assessment.form21.level eq 'D') or (assessment.form21.fall eq 'D') or (assessment.form22.evenness eq 'D') or (assessment.form22.level eq 'D') or (assessment.form22.fall eq 'D') or  (assessment.form23.evenness eq 'D') or (assessment.form23.level eq 'D') or (assessment.form23.fall eq 'D') or  (assessment.form24.evenness eq 'D') or (assessment.form24.level eq 'D') or (assessment.form24.fall eq 'D')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form21.evenness eq 'E') or (assessment.form21.level eq 'E') or (assessment.form21.fall eq 'E') or (assessment.form22.evenness eq 'E') or (assessment.form22.level eq 'E') or (assessment.form22.fall eq 'E') or  (assessment.form23.evenness eq 'E') or (assessment.form23.level eq 'E') or (assessment.form23.fall eq 'E') or  (assessment.form24.evenness eq 'E') or (assessment.form24.level eq 'E') or (assessment.form24.fall eq 'E')) ? 'selected':''}"></td>
		          </tr>

	        	</tbody>
			 </table>
			 <br>
			  <table class="table table-bordered table-responsive">
				 <thead>
		          <tr>
		            <th colspan="4">Sub-Factor / Item</th>
		            <th colspan="14">Block / Zone: ${assessment.blockZone3}</th>
		            <th colspan="14">Floor: ${assessment.floor3}</th>
		          </tr>

		          <tr>
		            <td colspan="4" rowspan="3">${assessment.subFactorItem3}</td>
		            <th colspan="28">Location / Flat: ${assessment.locationFlat3}</th>
		          </tr>

		          <tr>
		            <th colspan="7">Spot 1</th>
		            <th colspan="7">Spot 2</th>
		            <th colspan="7">Spot 3</th>
		            <th colspan="7">Spot 4</th>
		          </tr>

		          <tr>
		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>
		          </tr>
		        </thead>
		        <tbody>
		         
		          <tr>
		            <td>1.</td>
		            <td colspan="1">Soundness</td>

		            <td class="${assessment.form31.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form31.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form31.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form31.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form31.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form31.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form31.soundness eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form32.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form32.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form32.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form32.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form32.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form32.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form32.soundness eq 'N' ? 'selected':''}"></td>
                                                  
		            <td class="${assessment.form33.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form33.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form33.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form33.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form33.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form33.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form33.soundness eq 'N' ? 'selected':''}"></td>
                                                  
		            <td class="${assessment.form34.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form34.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form34.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form34.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form34.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form34.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form34.soundness eq 'N' ? 'selected':''}"></td>
		          </tr>


		          <tr>
		            <td class="hidden-cell" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Collected</b></td>
		            <td class="text-center" colspan="2">A*</td>
		            <td class="text-center" colspan="2">A</td>
		            <td class="text-center" colspan="2">B</td>
		            <td class="text-center" colspan="2">C</td>
		            <td class="text-center" colspan="2">D</td>
		            <td class="text-center" colspan="2">E</td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" border="0" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Sum</b></td>
		            <td colspan="2" class="${((assessment.form31.soundness eq 'A+') or (assessment.form32.soundness eq 'A+') or (assessment.form33.soundness eq 'A+') or (assessment.form34.soundness eq 'A+')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form31.soundness eq 'A') or (assessment.form32.soundness eq 'A') or (assessment.form33.soundness eq 'A') or (assessment.form34.soundness eq 'A')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form31.soundness eq 'B') or (assessment.form32.soundness eq 'B') or (assessment.form33.soundness eq 'B') or (assessment.form34.soundness eq 'B')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form31.soundness eq 'C') or (assessment.form32.soundness eq 'C') or (assessment.form33.soundness eq 'C') or (assessment.form34.soundness eq 'C')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form31.soundness eq 'D') or (assessment.form32.soundness eq 'D') or (assessment.form33.soundness eq 'D') or (assessment.form34.soundness eq 'D')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form31.soundness eq 'E') or (assessment.form32.soundness eq 'E') or (assessment.form33.soundness eq 'E') or (assessment.form34.soundness eq 'E')) ? 'selected':''}"></td>
		          </tr>

	        	</tbody>
			 </table>
			 <br>
			 <table class="table table-bordered table-responsive">
				 <thead>
		          <tr>
		            <th colspan="4">Sub-Factor / Item</th>
		            <th colspan="14">Block / Zone: ${assessment.blockZone4}</th>
		            <th colspan="14">Floor: ${assessment.floor4}</th>
		          </tr>

		          <tr>
		            <td colspan="4" rowspan="3">${assessment.subFactorItem4}</td>
		            <th colspan="28">Location / Flat: ${assessment.locationFlat4}</th>
		          </tr>

		          <tr>
		            <th colspan="7">Spot 1</th>
		            <th colspan="7">Spot 2</th>
		            <th colspan="7">Spot 3</th>
		            <th colspan="7">Spot 4</th>
		          </tr>

		          <tr>
		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>
		          </tr>
		        </thead>
		        <tbody>
		         
		          <tr>
		            <td colspan="1">1.</td>
		            <td colspan="3">Lintol</td>

		            <td class="${assessment.form41.lintol eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form41.lintol eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form41.lintol eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form41.lintol eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form41.lintol eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form41.lintol eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form41.lintol eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form42.lintol eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form42.lintol eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form42.lintol eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form42.lintol eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form42.lintol eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form42.lintol eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form42.lintol eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form43.lintol eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form43.lintol eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form43.lintol eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form43.lintol eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form43.lintol eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form43.lintol eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form43.lintol eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form44.lintol eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form44.lintol eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form44.lintol eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form44.lintol eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form44.lintol eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form44.lintol eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form44.lintol eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>2.</td>
		            <td colspan="3">Evenness</td>

		            <td class="${assessment.form41.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form41.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form41.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form41.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form41.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form41.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form41.evenness eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form42.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form42.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form42.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form42.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form42.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form42.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form42.evenness eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form43.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form43.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form43.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form43.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form43.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form43.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form43.evenness eq 'N' ? 'selected':''}"></td>
                                                
		            <td class="${assessment.form44.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form44.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form44.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form44.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form44.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form44.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form44.evenness eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>3.</td>
		            <td colspan="3">Joint Width</td>

		            <td class="${assessment.form41.jointwidth eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form41.jointwidth eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form41.jointwidth eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form41.jointwidth eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form41.jointwidth eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form41.jointwidth eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form41.jointwidth eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form42.jointwidth eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form42.jointwidth eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form42.jointwidth eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form42.jointwidth eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form42.jointwidth eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form42.jointwidth eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form42.jointwidth eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form43.jointwidth eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form43.jointwidth eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form43.jointwidth eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form43.jointwidth eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form43.jointwidth eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form43.jointwidth eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form43.jointwidth eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form44.jointwidth eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form44.jointwidth eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form44.jointwidth eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form44.jointwidth eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form44.jointwidth eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form44.jointwidth eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form44.jointwidth eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>4.</td>
		            <td colspan="3">Finish</td>

		            <td class="${assessment.form41.finish eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form41.finish eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form41.finish eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form41.finish eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form41.finish eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form41.finish eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form41.finish eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form42.finish eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form42.finish eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form42.finish eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form42.finish eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form42.finish eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form42.finish eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form42.finish eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form43.finish eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form43.finish eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form43.finish eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form43.finish eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form43.finish eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form43.finish eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form43.finish eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form44.finish eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form44.finish eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form44.finish eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form44.finish eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form44.finish eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form44.finish eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form44.finish eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Collected</b></td>
		            <td class="text-center" colspan="2">A*</td>
		            <td class="text-center" colspan="2">A</td>
		            <td class="text-center" colspan="2">B</td>
		            <td class="text-center" colspan="2">C</td>
		            <td class="text-center" colspan="2">D</td>
		            <td class="text-center" colspan="2">E</td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" border="0" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Sum</b></td>
		            <td colspan="2" class="${((assessment.form41.lintol eq 'A+') or  (assessment.form41.evenness eq 'A+') or (assessment.form41.jointwidth eq 'A+') or (assessment.form41.finish eq 'A+') or (assessment.form42.lintol eq 'A+') or  (assessment.form42.evenness eq 'A+') or (assessment.form42.jointwidth eq 'A+') or (assessment.form42.finish eq 'A+') or (assessment.form43.lintol eq 'A+') or  (assessment.form43.evenness eq 'A+') or (assessment.form43.finish eq 'A+') or (assessment.form43.jointwidth eq 'A+') or (assessment.form44.lintol eq 'A+') or  (assessment.form44.evenness eq 'A+') or (assessment.form44.jointwidth eq 'A+') or (assessment.form44.finish eq 'A+')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form41.lintol eq 'A') or  (assessment.form41.evenness eq 'A') or (assessment.form41.jointwidth eq 'A') or (assessment.form41.finish eq 'A') or (assessment.form42.lintol eq 'A') or  (assessment.form42.evenness eq 'A') or (assessment.form42.jointwidth eq 'A') or (assessment.form42.finish eq 'A') or (assessment.form43.lintol eq 'A') or  (assessment.form43.evenness eq 'A') or (assessment.form43.finish eq 'A') or (assessment.form43.jointwidth eq 'A') or (assessment.form44.lintol eq 'A') or  (assessment.form44.evenness eq 'A') or (assessment.form44.jointwidth eq 'A') or (assessment.form44.finish eq 'A')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form41.lintol eq 'B') or  (assessment.form41.evenness eq 'B') or (assessment.form41.jointwidth eq 'B') or (assessment.form41.finish eq 'B') or (assessment.form42.lintol eq 'B') or  (assessment.form42.evenness eq 'B') or (assessment.form42.jointwidth eq 'B') or (assessment.form42.finish eq 'B') or (assessment.form43.lintol eq 'B') or  (assessment.form43.evenness eq 'B') or (assessment.form43.finish eq 'B') or (assessment.form43.jointwidth eq 'B') or (assessment.form44.lintol eq 'B') or  (assessment.form44.evenness eq 'B') or (assessment.form44.jointwidth eq 'B') or (assessment.form44.finish eq 'B')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form41.lintol eq 'C') or  (assessment.form41.evenness eq 'C') or (assessment.form41.jointwidth eq 'C') or (assessment.form41.finish eq 'C') or (assessment.form42.lintol eq 'C') or  (assessment.form42.evenness eq 'C') or (assessment.form42.jointwidth eq 'C') or (assessment.form42.finish eq 'C') or (assessment.form43.lintol eq 'C') or  (assessment.form43.evenness eq 'C') or (assessment.form43.finish eq 'C') or (assessment.form43.jointwidth eq 'C') or (assessment.form44.lintol eq 'C') or  (assessment.form44.evenness eq 'C') or (assessment.form44.jointwidth eq 'C') or (assessment.form44.finish eq 'C')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form41.lintol eq 'D') or  (assessment.form41.evenness eq 'D') or (assessment.form41.jointwidth eq 'D') or (assessment.form41.finish eq 'D') or (assessment.form42.lintol eq 'D') or  (assessment.form42.evenness eq 'D') or (assessment.form42.jointwidth eq 'D') or (assessment.form42.finish eq 'D') or (assessment.form43.lintol eq 'D') or  (assessment.form43.evenness eq 'D') or (assessment.form43.finish eq 'D') or (assessment.form43.jointwidth eq 'D') or (assessment.form44.lintol eq 'D') or  (assessment.form44.evenness eq 'D') or (assessment.form44.jointwidth eq 'D') or (assessment.form44.finish eq 'D')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form41.lintol eq 'E') or  (assessment.form41.evenness eq 'E') or (assessment.form41.jointwidth eq 'E') or (assessment.form41.finish eq 'E') or (assessment.form42.lintol eq 'E') or  (assessment.form42.evenness eq 'E') or (assessment.form42.jointwidth eq 'E') or (assessment.form42.finish eq 'E') or (assessment.form43.lintol eq 'E') or  (assessment.form43.evenness eq 'E') or (assessment.form43.finish eq 'E') or (assessment.form43.jointwidth eq 'E') or (assessment.form44.lintol eq 'E') or  (assessment.form44.evenness eq 'E') or (assessment.form44.jointwidth eq 'E') or (assessment.form44.finish eq 'E')) ? 'selected':''}"></td>
		          </tr>

	        	</tbody>
			 </table>
			 <br>
			 <table class="table table-bordered table-responsive">
				 <thead>
		          <tr>
		            <th colspan="4">Sub-Factor / Item</th>
		            <th colspan="14">Block / Zone: ${assessment.blockZone5}</th>
		            <th colspan="14">Floor: ${assessment.floor5}</th>
		          </tr>

		          <tr>
		            <td colspan="4" rowspan="3">${assessment.subFactorItem5}</td>
		            <th colspan="28">Location / Flat: ${assessment.locationFlat5}</th>
		          </tr>

		          <tr>
		            <th colspan="7">Spot 1</th>
		            <th colspan="7">Spot 2</th>
		            <th colspan="7">Spot 3</th>
		            <th colspan="7">Spot 4</th>
		          </tr>

		          <tr>
		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>

		              <th>A*</th>
		              <th>A</th>
		              <th>B</th>
		              <th>C</th>
		              <th>D</th>
		              <th>E</th>
		              <th>N</th>
		          </tr>
		        </thead>
		        <tbody>
		         
		          <tr>
		            <td colspan="1">1.</td>
		            <td colspan="3">Evenness</td>

		            <td class="${assessment.form51.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form51.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form51.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form51.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form51.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form51.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form51.evenness eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form52.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form52.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form52.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form52.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form52.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form52.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form52.evenness eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form53.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form53.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form53.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form53.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form53.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form53.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form53.evenness eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form54.evenness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form54.evenness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form54.evenness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form54.evenness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form54.evenness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form54.evenness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form54.evenness eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>2.</td>
		            <td colspan="3">Plumb</td>

		            <td class="${assessment.form51.plumb eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form51.plumb eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form51.plumb eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form51.plumb eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form51.plumb eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form51.plumb eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form51.plumb eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form52.plumb eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form52.plumb eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form52.plumb eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form52.plumb eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form52.plumb eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form52.plumb eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form52.plumb eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form53.plumb eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form53.plumb eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form53.plumb eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form53.plumb eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form53.plumb eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form53.plumb eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form53.plumb eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form54.plumb eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form54.plumb eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form54.plumb eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form54.plumb eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form54.plumb eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form54.plumb eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form54.plumb eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>3.</td>
		            <td colspan="3">Soundness</td>

		            <td class="${assessment.form51.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form51.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form51.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form51.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form51.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form51.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form51.soundness eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form52.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form52.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form52.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form52.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form52.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form52.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form52.soundness eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form53.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form53.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form53.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form53.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form53.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form53.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form53.soundness eq 'N' ? 'selected':''}"></td>
                                                   
		            <td class="${assessment.form54.soundness eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form54.soundness eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form54.soundness eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form54.soundness eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form54.soundness eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form54.soundness eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form54.soundness eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td>4.</td>
		            <td colspan="3">Finish</td>

		            <td class="${assessment.form51.finish eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form51.finish eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form51.finish eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form51.finish eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form51.finish eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form51.finish eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form51.finish eq 'N' ? 'selected':''}"></td>
                                                  
		            <td class="${assessment.form52.finish eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form52.finish eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form52.finish eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form52.finish eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form52.finish eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form52.finish eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form52.finish eq 'N' ? 'selected':''}"></td>
                                                  
		            <td class="${assessment.form53.finish eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form53.finish eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form53.finish eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form53.finish eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form53.finish eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form53.finish eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form53.finish eq 'N' ? 'selected':''}"></td>
                                                  
		            <td class="${assessment.form54.finish eq 'A+' ? 'selected':''}"></td>
		            <td class="${assessment.form54.finish eq 'A' ? 'selected':''}"></td>
		            <td class="${assessment.form54.finish eq 'B' ? 'selected':''}"></td>
		            <td class="${assessment.form54.finish eq 'C' ? 'selected':''}"></td>
		            <td class="${assessment.form54.finish eq 'D' ? 'selected':''}"></td>
		            <td class="${assessment.form54.finish eq 'E' ? 'selected':''}"></td>
		            <td class="${assessment.form54.finish eq 'N' ? 'selected':''}"></td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Collected</b></td>
		            <td class="text-center" colspan="2">A*</td>
		            <td class="text-center" colspan="2">A</td>
		            <td class="text-center" colspan="2">B</td>
		            <td class="text-center" colspan="2">C</td>
		            <td class="text-center" colspan="2">D</td>
		            <td class="text-center" colspan="2">E</td>
		          </tr>

		          <tr>
		            <td class="hidden-cell" border="0" colspan="16"></td>
		            <td class="t-cpads" colspan="4"><b>Sum</b></td>
		            <td colspan="2" class="${((assessment.form51.evenness eq 'A+') or  (assessment.form51.plumb eq 'A+') or (assessment.form51.soundness eq 'A+') or (assessment.form51.finish eq 'A+') or (assessment.form52.evenness eq 'A+') or  (assessment.form52.plumb eq 'A+') or (assessment.form52.soundness eq 'A+') or (assessment.form52.finish eq 'A+') or (assessment.form53.evenness eq 'A+') or  (assessment.form53.plumb eq 'A+') or (assessment.form53.soundness eq 'A+') or (assessment.form53.finish eq 'A+') or (assessment.form54.evenness eq 'A+') or  (assessment.form54.plumb eq 'A+') or (assessment.form54.soundness eq 'A+') or (assessment.form54.finish eq 'A+')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form51.evenness eq 'A') or  (assessment.form51.plumb eq 'A') or (assessment.form51.soundness eq 'A') or (assessment.form51.finish eq 'A') or (assessment.form52.evenness eq 'A') or  (assessment.form52.plumb eq 'A') or (assessment.form52.soundness eq 'A') or (assessment.form52.finish eq 'A') or (assessment.form53.evenness eq 'A') or  (assessment.form53.plumb eq 'A') or (assessment.form53.soundness eq 'A') or (assessment.form53.finish eq 'A') or (assessment.form54.evenness eq 'A') or  (assessment.form54.plumb eq 'A') or (assessment.form54.soundness eq 'A') or (assessment.form54.finish eq 'A')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form51.evenness eq 'B') or  (assessment.form51.plumb eq 'B') or (assessment.form51.soundness eq 'B') or (assessment.form51.finish eq 'B') or (assessment.form52.evenness eq 'B') or  (assessment.form52.plumb eq 'B') or (assessment.form52.soundness eq 'B') or (assessment.form52.finish eq 'B') or (assessment.form53.evenness eq 'B') or  (assessment.form53.plumb eq 'B') or (assessment.form53.soundness eq 'B') or (assessment.form53.finish eq 'B') or (assessment.form54.evenness eq 'B') or  (assessment.form54.plumb eq 'B') or (assessment.form54.soundness eq 'B') or (assessment.form54.finish eq 'B')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form51.evenness eq 'E') or  (assessment.form51.plumb eq 'E') or (assessment.form51.soundness eq 'E') or (assessment.form51.finish eq 'E') or (assessment.form52.evenness eq 'E') or  (assessment.form52.plumb eq 'E') or (assessment.form52.soundness eq 'E') or (assessment.form52.finish eq 'E') or (assessment.form53.evenness eq 'E') or  (assessment.form53.plumb eq 'E') or (assessment.form53.soundness eq 'E') or (assessment.form53.finish eq 'E') or (assessment.form54.evenness eq 'E') or  (assessment.form54.plumb eq 'E') or (assessment.form54.soundness eq 'E') or (assessment.form54.finish eq 'E')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form51.evenness eq 'C') or  (assessment.form51.plumb eq 'C') or (assessment.form51.soundness eq 'C') or (assessment.form51.finish eq 'C') or (assessment.form52.evenness eq 'C') or  (assessment.form52.plumb eq 'C') or (assessment.form52.soundness eq 'C') or (assessment.form52.finish eq 'C') or (assessment.form53.evenness eq 'C') or  (assessment.form53.plumb eq 'C') or (assessment.form53.soundness eq 'C') or (assessment.form53.finish eq 'C') or (assessment.form54.evenness eq 'C') or  (assessment.form54.plumb eq 'C') or (assessment.form54.soundness eq 'C') or (assessment.form54.finish eq 'C')) ? 'selected':''}"></td>
		            <td colspan="2" class="${((assessment.form51.evenness eq 'D') or  (assessment.form51.plumb eq 'D') or (assessment.form51.soundness eq 'D') or (assessment.form51.finish eq 'D') or (assessment.form52.evenness eq 'D') or  (assessment.form52.plumb eq 'D') or (assessment.form52.soundness eq 'D') or (assessment.form52.finish eq 'D') or (assessment.form53.evenness eq 'D') or  (assessment.form53.plumb eq 'D') or (assessment.form53.soundness eq 'D') or (assessment.form53.finish eq 'D') or (assessment.form54.evenness eq 'D') or  (assessment.form54.plumb eq 'D') or (assessment.form54.soundness eq 'D') or (assessment.form54.finish eq 'D')) ? 'selected':''}"></td>
		          </tr>

	        	</tbody>
			 </table>
			 <div class="t-tmargs">
			 	<table width="100%">
			 		<tr>
			 			<td><b>Remarks by PGE/PT/Contractor:</b></td>
			 		</tr>
			 		<tr>
			 			<td style="border:solid 1px #dfdfd2;" height="100px" valign="top">
			 				<p align="left">${assessment.remarks}</p>
			 			</td>
			 		</tr>
			 	</table>
			 </div>

			 <div class="t-tmargs">

			 	<table width="100%">
			 		<tr>
			 			<td align="left" style="padding-left:150px">Assessment by PGE/PT:</td>
			 			<td colspan="2" style="border-bottom: solid 1px black !important; width:200px"></td>
			 			<td align="right" style="padding-right:50px">Signed:</td>
			 			<td style="border-bottom: solid 1px black !important; width:150px"></td>
			 			<td align="right" style="padding-right:50px">Date:</td>
			 			<td style="border-bottom: solid 1px black !important; width:150px"></td>

			 		</tr>
			 		<tr>

			 			<td></td>
			 			<td align="center">(Name)</td>
			 			<td align="center">(Post)</td>
			 			<td colspan="4"></td>
			 		</tr>
			 		<tr>
			 			<td align="left" style="padding-left:150px">Project Site Staff:</td>
			 			<td colspan="2" style="border-bottom: solid 1px black !important; width:200px"></td>
			 			<td align="right" style="padding-right:50px">Signed:</td>
			 			<td style="border-bottom: solid 1px black !important; width:150px"></td>
			 			<td align="right" style="padding-right:50px">Date:</td>
			 			<td style="border-bottom: solid 1px black !important; width:150px"></td>

			 		</tr>
			 		<tr>

			 			<td></td>
			 			<td align="center">(Name)</td>
			 			<td align="center">(Post)</td>
			 			<td colspan="4"></td>
			 		</tr>
			 		<tr>
			 			<td align="left" style="padding-left:150px">Contractor's Representative:</td>
			 			<td colspan="2" style="border-bottom: solid 1px black !important; width:200px"></td>
			 			<td align="right" style="padding-right:50px">Signed:</td>
			 			<td style="border-bottom: solid 1px black !important; width:150px"></td>
			 			<td align="right" style="padding-right:50px">Date:</td>
			 			<td style="border-bottom: solid 1px black !important; width:150px"></td>

			 		</tr>
			 		<tr>

			 			<td></td>
			 			<td align="center">(Name)</td>
			 			<td align="center">(Post)</td>
			 			<td colspan="4"></td>
			 		</tr>

			 	</table>
			 </div>
				<br/>

				<div class="buttons t-tmargs" align="right">
					<spring:url value="/submit" var="submit"/>
					<button type="button" class="button button-stable" onclick="javascript:window.print()">Print</button>
					<button type="button" class="button button-stable" onclick="javascript:history.back()">Back</button>
					<button type="button" class="button button-stable" onclick="location.href='${submit}'">Submit</button>
			    </div>
		</div>
	</div>
</body>
</html>