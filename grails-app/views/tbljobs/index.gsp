
<%@ page import="PMMS.Tbljobs" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tbljobs.label', default: 'Tbljobs')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tbljobs" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tbljobs" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
						<g:sortableColumn property="id" title="${message(code: 'tbljobs.id.label', default: 'Job ID')}" />
						<g:sortableColumn property="clientId" title="${message(code: 'tbljobs.clientId.label', default: 'Client Id')}" />
					
						<g:sortableColumn property="propertyId" title="${message(code: 'tbljobs.propertyId.label', default: 'Property Id')}" />
					
						<!--<g:sortableColumn property="accountId" title="${message(code: 'tbljobs.accountId.label', default: 'Account Id')}" />-->
						<g:sortableColumn property="contractor" title="${message(code: 'tbljobs.contractor.label', default: 'Contractor')}" />
					
						<g:sortableColumn property="teamJobs" title="${message(code: 'tbljobs.teamJobs.label', default: 'Filter 1')}" />
						<g:sortableColumn property="filter2" title="${message(code: 'tbljobs.filter2.label', default: 'Filter 2')}" />
					
						<g:sortableColumn property="cleared" title="${message(code: 'tbljobs.cleared.label', default: 'Cleared')}" />
					
						<!-- <g:sortableColumn property="jobCategoryId" title="${message(code: 'tbljobs.jobCategoryId.label', default: 'Job Category Id')}" />-->
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tbljobsInstanceList}" status="i" var="tbljobsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tbljobsInstance.id}">${tbljobsInstance.id}</g:link></td>
						
						<td>${fieldValue(bean: tbljobsInstance, field: "clientId")}</td>
						
						<td>${fieldValue(bean: tbljobsInstance, field: "propertyId")}</td>
					
						<td>${fieldValue(bean: tbljobsInstance, field: "accountId")}</td>
					
						<td>${fieldValue(bean: tbljobsInstance, field: "teamJobs")}</td>
						
						<td>${fieldValue(bean: tbljobsInstance, field: "filter2")}</td>
						
						<td>
							<g:if test="${tbljobsInstance.cleared == 0 }">
								<i class="text-success glyphicon glyphicon-ok"></i>
							</g:if>
							<g:else>
								<i class="text-danger glyphicon glyphicon-remove"></i>
							</g:else>
						</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tbljobsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
