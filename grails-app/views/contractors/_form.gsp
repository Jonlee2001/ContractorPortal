<%@ page import="ContractorPortal.Contractors" %>



<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="contractors.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${contractorsInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="contractors.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${contractorsInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'county', 'error')} required">
	<label for="county">
		<g:message code="contractors.county.label" default="County" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="county" required="" value="${contractorsInstance?.county}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contractors.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${contractorsInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="contractors.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${contractorsInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'homePhone', 'error')} required">
	<label for="homePhone">
		<g:message code="contractors.homePhone.label" default="Home Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homePhone" required="" value="${contractorsInstance?.homePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="contractors.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${contractorsInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'mobilePhone', 'error')} required">
	<label for="mobilePhone">
		<g:message code="contractors.mobilePhone.label" default="Mobile Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobilePhone" required="" value="${contractorsInstance?.mobilePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="contractors.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${contractorsInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'postCode', 'error')} required">
	<label for="postCode">
		<g:message code="contractors.postCode.label" default="Post Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postCode" required="" value="${contractorsInstance?.postCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="contractors.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${contractorsInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'town', 'error')} required">
	<label for="town">
		<g:message code="contractors.town.label" default="Town" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="town" required="" value="${contractorsInstance?.town}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contractorsInstance, field: 'workPhone', 'error')} required">
	<label for="workPhone">
		<g:message code="contractors.workPhone.label" default="Work Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="workPhone" required="" value="${contractorsInstance?.workPhone}"/>

</div>

