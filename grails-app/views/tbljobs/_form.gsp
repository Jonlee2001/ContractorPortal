<%@ page import="PMMS.Tbljobs" %>



<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'clientId', 'error')} ">
	<label for="clientId">
		<g:message code="tbljobs.clientId.label" default="Client Id" />
		
	</label>
	<g:textField name="clientId" maxlength="50" value="${tbljobsInstance?.clientId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'propertyId', 'error')} ">
	<label for="propertyId">
		<g:message code="tbljobs.propertyId.label" default="Property Id" />
		
	</label>
	<g:textField name="propertyId" maxlength="50" value="${tbljobsInstance?.propertyId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'accountId', 'error')} ">
	<label for="accountId">
		<g:message code="tbljobs.accountId.label" default="Account Id" />
		
	</label>
	<g:field name="accountId" type="number" value="${tbljobsInstance.accountId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'accountIdprior', 'error')} ">
	<label for="accountIdprior">
		<g:message code="tbljobs.accountIdprior.label" default="Account Idprior" />
		
	</label>
	<g:field name="accountIdprior" type="number" value="${tbljobsInstance.accountIdprior}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'userId', 'error')} ">
	<label for="userId">
		<g:message code="tbljobs.userId.label" default="User Id" />
		
	</label>
	<g:field name="userId" type="number" value="${tbljobsInstance.userId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'jobCategoryId', 'error')} ">
	<label for="jobCategoryId">
		<g:message code="tbljobs.jobCategoryId.label" default="Job Category Id" />
		
	</label>
	<g:field name="jobCategoryId" type="number" value="${tbljobsInstance.jobCategoryId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'jobType', 'error')} ">
	<label for="jobType">
		<g:message code="tbljobs.jobType.label" default="Job Type" />
		
	</label>
	<g:field name="jobType" type="number" value="${tbljobsInstance.jobType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'contractor', 'error')} ">
	<label for="contractor">
		<g:message code="tbljobs.contractor.label" default="Contractor" />
		
	</label>
	<g:textField name="contractor" maxlength="50" value="${tbljobsInstance?.contractor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'oldNo', 'error')} ">
	<label for="oldNo">
		<g:message code="tbljobs.oldNo.label" default="Old No" />
		
	</label>
	<g:textField name="oldNo" maxlength="50" value="${tbljobsInstance?.oldNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'dateRecd', 'error')} ">
	<label for="dateRecd">
		<g:message code="tbljobs.dateRecd.label" default="Date Recd" />
		
	</label>
	<g:datePicker name="dateRecd" precision="day"  value="${tbljobsInstance?.dateRecd}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'reportedBy', 'error')} ">
	<label for="reportedBy">
		<g:message code="tbljobs.reportedBy.label" default="Reported By" />
		
	</label>
	<g:textField name="reportedBy" maxlength="50" value="${tbljobsInstance?.reportedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="tbljobs.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${tbljobsInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'telNoHome', 'error')} ">
	<label for="telNoHome">
		<g:message code="tbljobs.telNoHome.label" default="Tel No Home" />
		
	</label>
	<g:textField name="telNoHome" maxlength="50" value="${tbljobsInstance?.telNoHome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'telNoBus', 'error')} ">
	<label for="telNoBus">
		<g:message code="tbljobs.telNoBus.label" default="Tel No Bus" />
		
	</label>
	<g:textField name="telNoBus" maxlength="50" value="${tbljobsInstance?.telNoBus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'telNoOther', 'error')} ">
	<label for="telNoOther">
		<g:message code="tbljobs.telNoOther.label" default="Tel No Other" />
		
	</label>
	<g:textField name="telNoOther" maxlength="50" value="${tbljobsInstance?.telNoOther}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'faultDetails', 'error')} ">
	<label for="faultDetails">
		<g:message code="tbljobs.faultDetails.label" default="Fault Details" />
		
	</label>
	<g:textField name="faultDetails" value="${tbljobsInstance?.faultDetails}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'dateInformed', 'error')} ">
	<label for="dateInformed">
		<g:message code="tbljobs.dateInformed.label" default="Date Informed" />
		
	</label>
	<g:datePicker name="dateInformed" precision="day"  value="${tbljobsInstance?.dateInformed}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'priority', 'error')} ">
	<label for="priority">
		<g:message code="tbljobs.priority.label" default="Priority" />
		
	</label>
	<g:field name="priority" type="number" value="${tbljobsInstance.priority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'access', 'error')} ">
	<label for="access">
		<g:message code="tbljobs.access.label" default="Access" />
		
	</label>
	<g:textField name="access" value="${tbljobsInstance?.access}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'whoPays', 'error')} ">
	<label for="whoPays">
		<g:message code="tbljobs.whoPays.label" default="Who Pays" />
		
	</label>
	<g:textField name="whoPays" maxlength="50" value="${tbljobsInstance?.whoPays}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'dateJobDone', 'error')} ">
	<label for="dateJobDone">
		<g:message code="tbljobs.dateJobDone.label" default="Date Job Done" />
		
	</label>
	<g:datePicker name="dateJobDone" precision="day"  value="${tbljobsInstance?.dateJobDone}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'dateInvoiced', 'error')} ">
	<label for="dateInvoiced">
		<g:message code="tbljobs.dateInvoiced.label" default="Date Invoiced" />
		
	</label>
	<g:datePicker name="dateInvoiced" precision="day"  value="${tbljobsInstance?.dateInvoiced}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'cleared', 'error')} ">
	<label for="cleared">
		<g:message code="tbljobs.cleared.label" default="Cleared" />
		
	</label>
	<g:field name="cleared" type="number" value="${tbljobsInstance.cleared}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'invTranId', 'error')} ">
	<label for="invTranId">
		<g:message code="tbljobs.invTranId.label" default="Inv Tran Id" />
		
	</label>
	<g:field name="invTranId" type="number" value="${tbljobsInstance.invTranId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="tbljobs.comments.label" default="Comments" />
		
	</label>
	<g:textField name="comments" value="${tbljobsInstance?.comments}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'costAsType', 'error')} ">
	<label for="costAsType">
		<g:message code="tbljobs.costAsType.label" default="Cost As Type" />
		
	</label>
	<g:field name="costAsType" value="${fieldValue(bean: tbljobsInstance, field: 'costAsType')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'nominalId', 'error')} ">
	<label for="nominalId">
		<g:message code="tbljobs.nominalId.label" default="Nominal Id" />
		
	</label>
	<g:textField name="nominalId" maxlength="50" value="${tbljobsInstance?.nominalId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'manager', 'error')} ">
	<label for="manager">
		<g:message code="tbljobs.manager.label" default="Manager" />
		
	</label>
	<g:field name="manager" type="number" value="${tbljobsInstance.manager}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'assignedto', 'error')} ">
	<label for="assignedto">
		<g:message code="tbljobs.assignedto.label" default="Assignedto" />
		
	</label>
	<g:field name="assignedto" type="number" value="${tbljobsInstance.assignedto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'ticketNo', 'error')} ">
	<label for="ticketNo">
		<g:message code="tbljobs.ticketNo.label" default="Ticket No" />
		
	</label>
	<g:field name="ticketNo" type="number" value="${tbljobsInstance.ticketNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'lastedited', 'error')} ">
	<label for="lastedited">
		<g:message code="tbljobs.lastedited.label" default="Lastedited" />
		
	</label>
	<g:datePicker name="lastedited" precision="day"  value="${tbljobsInstance?.lastedited}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'diaryDate', 'error')} ">
	<label for="diaryDate">
		<g:message code="tbljobs.diaryDate.label" default="Diary Date" />
		
	</label>
	<g:datePicker name="diaryDate" precision="day"  value="${tbljobsInstance?.diaryDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'teamJobs', 'error')} ">
	<label for="teamJobs">
		<g:message code="tbljobs.teamJobs.label" default="Team Jobs" />
		
	</label>
	<g:field name="teamJobs" type="number" value="${tbljobsInstance.teamJobs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'filter2', 'error')} ">
	<label for="filter2">
		<g:message code="tbljobs.filter2.label" default="Filter2" />
		
	</label>
	<g:field name="filter2" type="number" value="${tbljobsInstance.filter2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'jobCode', 'error')} ">
	<label for="jobCode">
		<g:message code="tbljobs.jobCode.label" default="Job Code" />
		
	</label>
	<g:field name="jobCode" type="number" value="${tbljobsInstance.jobCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'jobStatus', 'error')} ">
	<label for="jobStatus">
		<g:message code="tbljobs.jobStatus.label" default="Job Status" />
		
	</label>
	<g:field name="jobStatus" type="number" value="${tbljobsInstance.jobStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tbljobsInstance, field: 'deptId', 'error')} ">
	<label for="deptId">
		<g:message code="tbljobs.deptId.label" default="Dept Id" />
		
	</label>
	<g:field name="deptId" type="number" value="${tbljobsInstance.deptId}"/>

</div>

