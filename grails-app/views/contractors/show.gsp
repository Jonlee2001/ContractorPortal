
<%@ page import="ContractorPortal.Contractors" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractors.label', default: 'Contractors')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contractors" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contractors" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contractors">
			
				<g:if test="${contractorsInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="contractors.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${contractorsInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="contractors.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${contractorsInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.county}">
				<li class="fieldcontain">
					<span id="county-label" class="property-label"><g:message code="contractors.county.label" default="County" /></span>
					
						<span class="property-value" aria-labelledby="county-label"><g:fieldValue bean="${contractorsInstance}" field="county"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="contractors.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contractorsInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="contractors.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${contractorsInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="contractors.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${contractorsInstance}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="contractors.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${contractorsInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.mobilePhone}">
				<li class="fieldcontain">
					<span id="mobilePhone-label" class="property-label"><g:message code="contractors.mobilePhone.label" default="Mobile Phone" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhone-label"><g:fieldValue bean="${contractorsInstance}" field="mobilePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="contractors.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${contractorsInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.postCode}">
				<li class="fieldcontain">
					<span id="postCode-label" class="property-label"><g:message code="contractors.postCode.label" default="Post Code" /></span>
					
						<span class="property-value" aria-labelledby="postCode-label"><g:fieldValue bean="${contractorsInstance}" field="postCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="contractors.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${contractorsInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.town}">
				<li class="fieldcontain">
					<span id="town-label" class="property-label"><g:message code="contractors.town.label" default="Town" /></span>
					
						<span class="property-value" aria-labelledby="town-label"><g:fieldValue bean="${contractorsInstance}" field="town"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractorsInstance?.workPhone}">
				<li class="fieldcontain">
					<span id="workPhone-label" class="property-label"><g:message code="contractors.workPhone.label" default="Work Phone" /></span>
					
						<span class="property-value" aria-labelledby="workPhone-label"><g:fieldValue bean="${contractorsInstance}" field="workPhone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contractorsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contractorsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
