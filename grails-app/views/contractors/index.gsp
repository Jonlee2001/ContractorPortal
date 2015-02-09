
<%@ page import="ContractorPortal.Contractors" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractors.label', default: 'Contractors')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contractors" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contractors" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="id" title="${message(code: 'contractors.id.label', default: 'ID')}" />
						<g:sortableColumn property="name" title="${message(code: 'contractors.name.label', default: 'Name')}" />
						<th>Title</th>
						<g:sortableColumn property="firstName" title="${message(code: 'contractors.firstName.label', default: 'First Name')}" />
						<g:sortableColumn property="lastName" title="${message(code: 'contractors.lastName.label', default: 'Last Name')}" />
						<th>Address</th>
						<th>Town</th>
						<th>County</th>
						<th>Post Code</th>
						<th>Country</th>
						<th>Email</th>
						<th>Home Phone</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${contractorsInstanceList}" status="i" var="contractorsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${contractorsInstance.id}">${fieldValue(bean: contractorsInstance, field: "id")}</g:link></td>
						<td>${fieldValue(bean: contractorsInstance, field: "name")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "title")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "firstName")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "lastName")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "address")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "town")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "county")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "postCode")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "country")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "email")}</td>
						<td>${fieldValue(bean: contractorsInstance, field: "homePhone")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contractorsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
