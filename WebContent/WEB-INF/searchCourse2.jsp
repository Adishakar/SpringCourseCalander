<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Customer Details</title>
</head>
<body>
<%@ include file="menu.html" %><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</body>
<script type="text/javascript">
	function getRadioValue(theField) {
		var value = "";
		for (i = 0; i < theField.length; i++) {
			if (theField[i].checked) {
				value = theField[i].value;
				break;
			}
		}
		return value;
	}
	function submitEdit() {
		var form = document.searchCourseForm;
		var courseName = getRadioValue(form);
		alert(courseName);
		form.courseName.value = courseName;
		form.submit();
	}
	function searchEmplyee() {
		searchCustomerForm.pageAction.value = "search";
		document.searchCustomerForm.submit();
	}
	function clearEmployee() {
		window.location.href = "emp.htm";
	}
</script>
</head>
<form:form name="searchCustomerForm">
	<input type="hidden" name="pageAction">
	<input type="hidden" name="cusId">
	<table border="0" cellpadding="0" width="100%">
		<tr class="Content_table_caption">
			<td colspan="8"><spring:message
					code="label.benefit.core.icon.hctcEligiblity.searchCriteria">
				</spring:message></td>
		</tr>
		<tr>
			<td class="label_bold" align="left"><span
				class="mandatory_field">*</span> <spring:message
					code="label.employee.searchcriteaia.emp.name" /> <spring:message
					code="label.colon.value" /></td>
			<td><spring:bind path="searchCustomerCommand.customerId">
					<input type="text" name="${status.expression}" maxlength="4"
						value="${status.value}" class="fields" />
				</spring:bind></td>
			<td class="label_bold"><span class="mandatory_field">*</span> <spring:message
					code="label.employee.searchcriteaia.dept.number" /> <spring:message
					code="label.colon.value" /></td>
			<td><spring:bind path="searchCustomerCommand.deptno">
					<input type="text" name="${status.expression}"
						value="${status.value}" class="fields" />
				</spring:bind></td>
			<td><input type="button" class="buttonBgForm" value="Search  "
				onclick="searchEmplyee()" /> <input type="button"
				class="buttonBgForm" value="Clear" onclick="clearEmployee()" /></td>
			<td colspan="3">&nbsp;</td>
		</tr>
		<tr class="section_bottom_bg_button">
			<td colspan="6">&nbsp;</td>
		</tr>
	</table>
	<table border="0" cellpadding="0" width="100%">
		<tr class="Content_table_caption">
			<td>Search Results</td>
		</tr>
		<tr>
			<td colspan="2" align="left" width="80%"><display:table
					id="customer" requestURI="searchCustomer.htm" name="employeeList"
					pagesize="1">
					<display:column title="" sortable="false" headerClass="sortable">
						<input type="radio" name="cId"
							value='<c:out value="${customer.customerId}" />' />
					</display:column>
					<display:column title="CUSTOMAR_ID" property="customerId" />
					<display:column title="NAME" property="name" />
					<display:column title="&nbsp;&nbsp;&nbsp;&nbsp;Job   "
						property="job" />
					<display:column title="Manager" property="mgr" />
					<display:column title="HIRE DATE">
						<fmt:formatDate pattern="dd/MMM/yyyy" value="${customer.hiredate}" />
					</display:column>
					<display:column title="SALARY" property="sal" />
					<display:column title="COMMISSION" property="comm" />
					<display:column title="DEPT NO" property="deptno" />
				</display:table></td>

		</tr>
		<tr class="section_bottom_bg_button">
			<td align="left">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><input type="button" class="buttonBgForm" value="Edit  "
							onclick="submitEdit()" /> <input type="button"
							class="buttonBgForm" value="Delete" /></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</form:form>
</html>
<script type="text/javascript">
	function m1() {
		var age = 10;
		var name = 'rama';
		alert(age);
	}
</script>

