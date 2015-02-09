
<%@ page import="PMMS.Tbljobs" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tbljobs.label', default: 'Tbljobs')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tbljobs" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tbljobs" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tbljobs">
			
				<g:if test="${tbljobsInstance?.clientId}">
				<li class="fieldcontain">
					<span id="clientId-label" class="property-label"><g:message code="tbljobs.clientId.label" default="Client Id" /></span>
					
						<span class="property-value" aria-labelledby="clientId-label"><g:fieldValue bean="${tbljobsInstance}" field="clientId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.propertyId}">
				<li class="fieldcontain">
					<span id="propertyId-label" class="property-label"><g:message code="tbljobs.propertyId.label" default="Property Id" /></span>
					
						<span class="property-value" aria-labelledby="propertyId-label"><g:fieldValue bean="${tbljobsInstance}" field="propertyId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.accountId}">
				<li class="fieldcontain">
					<span id="accountId-label" class="property-label"><g:message code="tbljobs.accountId.label" default="Account Id" /></span>
					
						<span class="property-value" aria-labelledby="accountId-label"><g:fieldValue bean="${tbljobsInstance}" field="accountId"/></span>
					
				</li>
				</g:if>
			
				
			
				<g:if test="${tbljobsInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="tbljobs.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${tbljobsInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.jobCategoryId}">
				<li class="fieldcontain">
					<span id="jobCategoryId-label" class="property-label"><g:message code="tbljobs.jobCategoryId.label" default="Job Category Id" /></span>
					
						<span class="property-value" aria-labelledby="jobCategoryId-label"><g:fieldValue bean="${tbljobsInstance}" field="jobCategoryId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.jobType}">
				<li class="fieldcontain">
					<span id="jobType-label" class="property-label"><g:message code="tbljobs.jobType.label" default="Job Type" /></span>
					
						<span class="property-value" aria-labelledby="jobType-label"><g:fieldValue bean="${tbljobsInstance}" field="jobType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.contractor}">
				<li class="fieldcontain">
					<span id="contractor-label" class="property-label"><g:message code="tbljobs.contractor.label" default="Contractor" /></span>
					
						<span class="property-value" aria-labelledby="contractor-label"><g:fieldValue bean="${tbljobsInstance}" field="contractor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.oldNo}">
				<li class="fieldcontain">
					<span id="oldNo-label" class="property-label"><g:message code="tbljobs.oldNo.label" default="Old No" /></span>
					
						<span class="property-value" aria-labelledby="oldNo-label"><g:fieldValue bean="${tbljobsInstance}" field="oldNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.dateRecd}">
				<li class="fieldcontain">
					<span id="dateRecd-label" class="property-label"><g:message code="tbljobs.dateRecd.label" default="Date Recd" /></span>
					
						<span class="property-value" aria-labelledby="dateRecd-label"><g:formatDate date="${tbljobsInstance?.dateRecd}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.reportedBy}">
				<li class="fieldcontain">
					<span id="reportedBy-label" class="property-label"><g:message code="tbljobs.reportedBy.label" default="Reported By" /></span>
					
						<span class="property-value" aria-labelledby="reportedBy-label"><g:fieldValue bean="${tbljobsInstance}" field="reportedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="tbljobs.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${tbljobsInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.telNoHome}">
				<li class="fieldcontain">
					<span id="telNoHome-label" class="property-label"><g:message code="tbljobs.telNoHome.label" default="Tel No Home" /></span>
					
						<span class="property-value" aria-labelledby="telNoHome-label"><g:fieldValue bean="${tbljobsInstance}" field="telNoHome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.telNoBus}">
				<li class="fieldcontain">
					<span id="telNoBus-label" class="property-label"><g:message code="tbljobs.telNoBus.label" default="Tel No Bus" /></span>
					
						<span class="property-value" aria-labelledby="telNoBus-label"><g:fieldValue bean="${tbljobsInstance}" field="telNoBus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.telNoOther}">
				<li class="fieldcontain">
					<span id="telNoOther-label" class="property-label"><g:message code="tbljobs.telNoOther.label" default="Tel No Other" /></span>
					
						<span class="property-value" aria-labelledby="telNoOther-label"><g:fieldValue bean="${tbljobsInstance}" field="telNoOther"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.faultDetails}">
				<li class="fieldcontain">
					<span id="faultDetails-label" class="property-label"><g:message code="tbljobs.faultDetails.label" default="Fault Details" /></span>
					
						<span class="property-value" aria-labelledby="faultDetails-label"><g:fieldValue bean="${tbljobsInstance}" field="faultDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.dateInformed}">
				<li class="fieldcontain">
					<span id="dateInformed-label" class="property-label"><g:message code="tbljobs.dateInformed.label" default="Date Informed" /></span>
					
						<span class="property-value" aria-labelledby="dateInformed-label"><g:formatDate date="${tbljobsInstance?.dateInformed}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.priority}">
				<li class="fieldcontain">
					<span id="priority-label" class="property-label"><g:message code="tbljobs.priority.label" default="Priority" /></span>
					
						<span class="property-value" aria-labelledby="priority-label"><g:fieldValue bean="${tbljobsInstance}" field="priority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.access}">
				<li class="fieldcontain">
					<span id="access-label" class="property-label"><g:message code="tbljobs.access.label" default="Access" /></span>
					
						<span class="property-value" aria-labelledby="access-label"><g:fieldValue bean="${tbljobsInstance}" field="access"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.whoPays}">
				<li class="fieldcontain">
					<span id="whoPays-label" class="property-label"><g:message code="tbljobs.whoPays.label" default="Who Pays" /></span>
					
						<span class="property-value" aria-labelledby="whoPays-label"><g:fieldValue bean="${tbljobsInstance}" field="whoPays"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.dateJobDone}">
				<li class="fieldcontain">
					<span id="dateJobDone-label" class="property-label"><g:message code="tbljobs.dateJobDone.label" default="Date Job Done" /></span>
					
						<span class="property-value" aria-labelledby="dateJobDone-label"><g:formatDate date="${tbljobsInstance?.dateJobDone}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.dateInvoiced}">
				<li class="fieldcontain">
					<span id="dateInvoiced-label" class="property-label"><g:message code="tbljobs.dateInvoiced.label" default="Date Invoiced" /></span>
					
						<span class="property-value" aria-labelledby="dateInvoiced-label"><g:formatDate date="${tbljobsInstance?.dateInvoiced}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.cleared}">
				<li class="fieldcontain">
					<span id="cleared-label" class="property-label"><g:message code="tbljobs.cleared.label" default="Cleared" /></span>
					
						<span class="property-value" aria-labelledby="cleared-label"><g:fieldValue bean="${tbljobsInstance}" field="cleared"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.invTranId}">
				<li class="fieldcontain">
					<span id="invTranId-label" class="property-label"><g:message code="tbljobs.invTranId.label" default="Inv Tran Id" /></span>
					
						<span class="property-value" aria-labelledby="invTranId-label"><g:fieldValue bean="${tbljobsInstance}" field="invTranId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="tbljobs.comments.label" default="Comments" /></span>
					
						<div class="well">
							<g:fieldValue bean="${tbljobsInstance}" field="comments"/>
						</div>
					
				</li>
				</g:if>
			
				
			
							
				<g:if test="${tbljobsInstance?.manager}">
				<li class="fieldcontain">
					<span id="manager-label" class="property-label"><g:message code="tbljobs.manager.label" default="Manager" /></span>
					
						<span class="property-value" aria-labelledby="manager-label"><g:fieldValue bean="${tbljobsInstance}" field="manager"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.assignedto}">
				<li class="fieldcontain">
					<span id="assignedto-label" class="property-label"><g:message code="tbljobs.assignedto.label" default="Assignedto" /></span>
					
						<span class="property-value" aria-labelledby="assignedto-label"><g:fieldValue bean="${tbljobsInstance}" field="assignedto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.ticketNo}">
				<li class="fieldcontain">
					<span id="ticketNo-label" class="property-label"><g:message code="tbljobs.ticketNo.label" default="Ticket No" /></span>
					
						<span class="property-value" aria-labelledby="ticketNo-label"><g:fieldValue bean="${tbljobsInstance}" field="ticketNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.lastedited}">
				<li class="fieldcontain">
					<span id="lastedited-label" class="property-label"><g:message code="tbljobs.lastedited.label" default="Lastedited" /></span>
					
						<span class="property-value" aria-labelledby="lastedited-label"><g:formatDate date="${tbljobsInstance?.lastedited}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.diaryDate}">
				<li class="fieldcontain">
					<span id="diaryDate-label" class="property-label"><g:message code="tbljobs.diaryDate.label" default="Diary Date" /></span>
					
						<span class="property-value" aria-labelledby="diaryDate-label"><g:formatDate date="${tbljobsInstance?.diaryDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.teamJobs}">
				<li class="fieldcontain">
					<span id="teamJobs-label" class="property-label"><g:message code="tbljobs.teamJobs.label" default="Team Jobs" /></span>
					
						<span class="property-value" aria-labelledby="teamJobs-label"><g:fieldValue bean="${tbljobsInstance}" field="teamJobs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.filter2}">
				<li class="fieldcontain">
					<span id="filter2-label" class="property-label"><g:message code="tbljobs.filter2.label" default="Filter2" /></span>
					
						<span class="property-value" aria-labelledby="filter2-label"><g:fieldValue bean="${tbljobsInstance}" field="filter2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.jobCode}">
				<li class="fieldcontain">
					<span id="jobCode-label" class="property-label"><g:message code="tbljobs.jobCode.label" default="Job Code" /></span>
					
						<span class="property-value" aria-labelledby="jobCode-label"><g:fieldValue bean="${tbljobsInstance}" field="jobCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.jobStatus}">
				<li class="fieldcontain">
					<span id="jobStatus-label" class="property-label"><g:message code="tbljobs.jobStatus.label" default="Job Status" /></span>
					
						<span class="property-value" aria-labelledby="jobStatus-label"><g:fieldValue bean="${tbljobsInstance}" field="jobStatus"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${tbljobsInstance?.cViewed}">
				<li class="fieldcontain">
					<span id="cViewed-label" class="property-label"><g:message code="tbljobs.cViewed.label" default="cViewed" /></span>
					<span class="property-value" aria-labelledby="cViewed-label"><g:fieldValue bean="${tbljobsInstance}" field="cViewed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tbljobsInstance?.deptId}">
				<li class="fieldcontain">
					<span id="deptId-label" class="property-label"><g:message code="tbljobs.deptId.label" default="Dept Id" /></span>
					
						<span class="property-value" aria-labelledby="deptId-label"><g:fieldValue bean="${tbljobsInstance}" field="deptId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tbljobsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tbljobsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
