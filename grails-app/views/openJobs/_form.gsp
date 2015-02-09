<%@ page import="ContractorPortal.OpenJobs" %>



<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'assignedTo', 'error')} required">
	<label for="assignedTo">
		<g:message code="openJobs.assignedTo.label" default="Assigned To" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="assignedTo" required="" value="${openJobsInstance?.assignedTo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="openJobs.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="category" required="" value="${openJobsInstance?.category}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'clientId', 'error')} required">
	<label for="clientId">
		<g:message code="openJobs.clientId.label" default="Client Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clientId" required="" value="${openJobsInstance?.clientId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'contractor', 'error')} required">
	<label for="contractor">
		<g:message code="openJobs.contractor.label" default="Contractor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="contractor" name="contractor.id" from="${ContractorPortal.Contractors.list()}" optionKey="id" required="" value="${openJobsInstance?.contractor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'dateInformed', 'error')} required">
	<label for="dateInformed">
		<g:message code="openJobs.dateInformed.label" default="Date Informed" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateInformed" precision="day"  value="${openJobsInstance?.dateInformed}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'dateJobDone', 'error')} required">
	<label for="dateJobDone">
		<g:message code="openJobs.dateJobDone.label" default="Date Job Done" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateJobDone" precision="day"  value="${openJobsInstance?.dateJobDone}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'dateReceived', 'error')} required">
	<label for="dateReceived">
		<g:message code="openJobs.dateReceived.label" default="Date Received" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateReceived" precision="day"  value="${openJobsInstance?.dateReceived}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="openJobs.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="department" required="" value="${openJobsInstance?.department}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'diaryDate', 'error')} required">
	<label for="diaryDate">
		<g:message code="openJobs.diaryDate.label" default="Diary Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="diaryDate" precision="day"  value="${openJobsInstance?.diaryDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'enteredBy', 'error')} required">
	<label for="enteredBy">
		<g:message code="openJobs.enteredBy.label" default="Entered By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="enteredBy" required="" value="${openJobsInstance?.enteredBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'faultDetails', 'error')} required">
	<label for="faultDetails">
		<g:message code="openJobs.faultDetails.label" default="Fault Details" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="faultDetails" required="" value="${openJobsInstance?.faultDetails}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'filter1', 'error')} required">
	<label for="filter1">
		<g:message code="openJobs.filter1.label" default="Filter1" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="filter1" type="number" value="${openJobsInstance.filter1}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'filter2', 'error')} required">
	<label for="filter2">
		<g:message code="openJobs.filter2.label" default="Filter2" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="filter2" type="number" value="${openJobsInstance.filter2}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'jobType', 'error')} required">
	<label for="jobType">
		<g:message code="openJobs.jobType.label" default="Job Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="jobType" type="number" value="${openJobsInstance.jobType}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'overdue', 'error')} required">
	<label for="overdue">
		<g:message code="openJobs.overdue.label" default="Overdue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="overdue" type="number" value="${openJobsInstance.overdue}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'priority', 'error')} required">
	<label for="priority">
		<g:message code="openJobs.priority.label" default="Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="priority" type="number" value="${openJobsInstance.priority}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'propertyId', 'error')} required">
	<label for="propertyId">
		<g:message code="openJobs.propertyId.label" default="Property Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="propertyId" required="" value="${openJobsInstance?.propertyId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'propertyManager', 'error')} required">
	<label for="propertyManager">
		<g:message code="openJobs.propertyManager.label" default="Property Manager" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="propertyManager" required="" value="${openJobsInstance?.propertyManager}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'reportedBy', 'error')} required">
	<label for="reportedBy">
		<g:message code="openJobs.reportedBy.label" default="Reported By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="reportedBy" required="" value="${openJobsInstance?.reportedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: openJobsInstance, field: 'subCategory', 'error')} required">
	<label for="subCategory">
		<g:message code="openJobs.subCategory.label" default="Sub Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subCategory" required="" value="${openJobsInstance?.subCategory}"/>

</div>

